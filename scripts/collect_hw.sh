#!/usr/bin/env bash
set -euo pipefail

# Hardware collection script
# - Generates a hardware profile similar to HARDWARE.md
# - Defaults to non-destructive, no-sudo operation
# - Optional: install helpful tools and/or use sudo for richer details

out_file="HARDWARE.md"
use_sudo=false
do_install=false
assume_yes=false

print_help() {
  cat <<'EOF'
Usage: scripts/collect_hw.sh [options]

Options:
  -o, --output FILE     Output file (default: HARDWARE.md)
  -s, --sudo            Allow using sudo for certain commands (dmidecode, smartctl, etc.)
  -i, --install-tools   Install recommended diagnostics via apt (asks for confirmation unless --yes)
  -y, --yes             Answer yes to install prompt (use with --install-tools)
  -h, --help            Show this help

Notes:
  - By default, runs without sudo and skips commands that require elevated privileges.
  - Recommended tools: inxi, lm-sensors, nvme-cli, smartmontools, mesa-utils,
    usbutils, pciutils, lshw, fwupd, iw, rfkill, alsa-utils, pulseaudio-utils, bluez.
EOF
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -o|--output)
      out_file="$2"; shift 2;;
    -s|--sudo)
      use_sudo=true; shift;;
    -i|--install-tools)
      do_install=true; shift;;
    -y|--yes)
      assume_yes=true; shift;;
    -h|--help)
      print_help; exit 0;;
    *)
      echo "Unknown option: $1" >&2; print_help; exit 2;;
  esac
done

confirm() {
  local prompt="$1"
  if $assume_yes; then return 0; fi
  read -r -p "$prompt [y/N]: " yn || true
  case "$yn" in
    [Yy]*) return 0;;
    *) return 1;;
  esac
}

run_cmd() {
  # Usage: run_cmd "Section Title" "command here" [require_sudo]
  local title="$1"; shift
  local cmd="$1"; shift || true
  local need_sudo="${1:-false}"
  {
    echo
    echo "## $title"
    echo
    echo "Command: \`$cmd\`"
    echo
    if [[ "$need_sudo" == true ]] && ! $use_sudo; then
      echo "(skipped: sudo not enabled)"
    else
      if eval "$cmd" >/dev/null 2>&1; then
        echo '```'
        eval "$cmd"
        echo '```'
      else
        echo "(not available or failed)"
      fi
    fi
  } >> "$out_file"
}

run_block() {
  # Usage: run_block "Section Title" <<<'multiline content'
  local title="$1"; shift
  {
    echo
    echo "## $title"
    echo
    cat
  } >> "$out_file"
}

maybe_install() {
  $do_install || return 0
  echo "Preparing to install recommended tools with apt:"
  local pkgs=(
    inxi lm-sensors nvme-cli smartmontools mesa-utils usbutils pciutils lshw fwupd
    iw rfkill alsa-utils pulseaudio-utils bluez
  )
  echo "  ${pkgs[*]}"
  if confirm "Proceed with sudo apt update && sudo apt install -y?"; then
    sudo apt-get update
    sudo apt-get install -y "${pkgs[@]}"
  else
    echo "Install canceled; continuing without installing packages." >&2
  fi
}

generate_report() {
  : > "$out_file"
  {
    echo "# Hardware Profile"
    echo
    echo "Generated: $(date -Is)"
    echo "Host: $(hostname)"
  } >> "$out_file"

  # OS and Kernel
  run_cmd "OS Release" "cat /etc/os-release || true"
  run_cmd "Kernel" "uname -a"
  run_cmd "hostnamectl" "hostnamectl status"

  # System Identity (DMI/sysfs)
  {
    echo
    echo "## System Identity (DMI/sysfs)"
    echo
    echo 'Paths: `/sys/class/dmi/id/*` (read-only)'
    echo
    echo '```'
    for f in \
      bios_date bios_vendor bios_version \
      board_name board_vendor board_version \
      chassis_type chassis_vendor chassis_version \
      product_family product_name product_sku product_version \
      sys_vendor; do
      if [ -r "/sys/class/dmi/id/$f" ]; then
        printf "%s: " "$f"
        tr -d '\0' < "/sys/class/dmi/id/$f" || true
        echo
      fi
    done
    echo '```'
  } >> "$out_file"

  # inxi summary if available
  run_cmd "inxi Summary" "inxi -Fazy"

  # CPU
  run_cmd "CPU" "lscpu"
  run_cmd "CPU (/proc/cpuinfo key fields)" "grep -E '(^model name|^vendor_id|^cpu family|^cpu MHz|^cache size)' /proc/cpuinfo | uniq -c || true"

  # Memory
  run_cmd "Memory Summary" "free -h"
  run_cmd "Memory (dmidecode)" "${use_sudo:+sudo }dmidecode -t memory" true
  run_cmd "Memory (lshw)" "${use_sudo:+sudo }lshw -short -C memory" true

  # Storage
  run_cmd "Block Devices" "lsblk -o NAME,MODEL,SERIAL,SIZE,ROTA,TYPE,FSTYPE,MOUNTPOINT,UUID"
  run_cmd "NVMe List" "nvme list"
  # SMART: scan and run -H for first device
  if command -v smartctl >/dev/null 2>&1; then
    local dev
    dev=$(smartctl --scan-open 2>/dev/null | awk '{print $1}' | head -n1 || true)
    if [[ -n "${dev:-}" ]]; then
      run_cmd "SMART Health ($dev)" "${use_sudo:+sudo }smartctl -H $dev" true
    else
      run_cmd "SMART Devices" "smartctl --scan"
    fi
  else
    run_cmd "SMART Devices" "smartctl --scan"
  fi

  # PCI
  run_cmd "PCI (VGA/Display/3D)" "lspci -nn | grep -i -E 'vga|3d|display'"
  run_cmd "PCI (Network)" "lspci -nn | grep -i -E 'network|ethernet|wireless'"
  run_cmd "PCI (Full)" "lspci -nn"

  # USB
  run_cmd "USB Devices" "lsusb"

  # Network
  run_cmd "Network (IP links)" "ip -br a"
  run_cmd "Wireless (iw)" "iw dev"
  run_cmd "RFKill" "rfkill list"

  # Audio
  run_cmd "ALSA Playback Devices" "aplay -l"
  run_cmd "ALSA Capture Devices" "arecord -l"
  run_cmd "PulseAudio Cards" "pactl list short cards"

  # Bluetooth
  run_cmd "Bluetooth Controller" "bluetoothctl show"

  # Battery/Power
  if upower -e >/dev/null 2>&1 && upower -e | grep -i battery >/dev/null 2>&1; then
    local batpath
    batpath=$(upower -e | grep -i battery | head -n1)
    run_cmd "Battery (UPower)" "upower -i $batpath"
  else
    {
      echo
      echo "## Battery (sysfs)"
      echo
      echo 'Command: `cat /sys/class/power_supply/BAT*/uevent`'
      echo
      if ls /sys/class/power_supply/BAT*/uevent >/dev/null 2>&1; then
        echo '```'
        cat /sys/class/power_supply/BAT*/uevent || true
        echo '```'
      else
        echo "(not available)"
      fi
    } >> "$out_file"
  fi

  # Sensors
  run_cmd "Sensors" "${use_sudo:+sudo }sensors" true

  # Firmware
  run_cmd "FWUPD Devices" "fwupdmgr get-devices"

  # Displays / graphics info
  run_cmd "DRM GPUs" "ls -l /sys/class/drm || true"
  run_cmd "OpenGL Info" "glxinfo -B"

  # Input devices
  run_cmd "XInput Devices" "xinput list"

  # lshw overview
  run_cmd "lshw (short)" "${use_sudo:+sudo }lshw -short" true

  {
    echo
    echo "---"
    echo
    echo "Note: Sections marked as 'skipped' or 'not available' indicate the tool is missing or sudo is disabled."
  } >> "$out_file"
}

maybe_install
generate_report

echo "Wrote $out_file"

