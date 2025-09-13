# Hardware Profile

Generated: 2025-09-12T23:13:33-05:00
Host: portaptty

## OS Release

Command: `cat /etc/os-release || true`

```
PRETTY_NAME="Ubuntu 24.04.3 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.3 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo
```

## Kernel

Command: `uname -a`

```
Linux portaptty 6.14.0-29-generic #29~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Thu Aug 14 16:52:50 UTC 2 x86_64 x86_64 x86_64 GNU/Linux
```

## hostnamectl

Command: `hostnamectl status`

```
 Static hostname: portaptty
       Icon name: computer-laptop
         Chassis: laptop 💻
      Machine ID: a3270e14c8c2473d891c33bc11266649
         Boot ID: bcbb01013c674018b0d8e162ca63f216
Operating System: Ubuntu 24.04.3 LTS
          Kernel: Linux 6.14.0-29-generic
    Architecture: x86-64
 Hardware Vendor: Lenovo
  Hardware Model: ThinkPad T580
Firmware Version: N27ET29W (1.15 )
   Firmware Date: Wed 2018-08-08
    Firmware Age: 7y 1month 5d
```

## System Identity (DMI/sysfs)

Paths: `/sys/class/dmi/id/*` (read-only)

```
bios_date: 08/08/2018

bios_vendor: LENOVO

bios_version: N27ET29W (1.15 )

board_name: 20L9CTO1WW

board_vendor: LENOVO

board_version: SDK0R32862 WIN

chassis_type: 10

chassis_vendor: LENOVO

chassis_version: None

product_family: ThinkPad T580

product_name: 20L9CTO1WW

product_sku: LENOVO_MT_20L9_BU_Think_FM_ThinkPad T580

product_version: ThinkPad T580

sys_vendor: LENOVO

```

## inxi Summary

Command: `inxi -Fazy`

```
12System:
  12Kernel 6.14.0-29-generic 12arch x86_64 12bits 64 12compiler gcc 12v 13.3.0
    12clocksource tsc 12avail acpi_pm
    12parameters BOOT_IMAGE=/boot/vmlinuz-6.14.0-29-generic
    root=UUID=241f5c57-9de4-4b42-a61f-cb8106de2fa0 ro quiet splash
    vt.handoff=7
  12Desktop GNOME 12v 46.0 12tk GTK 12v 3.24.41 12wm gnome-shell
    12tools gsd-screensaver-proxy 12dm GDM3 12v 46.2 12Distro Ubuntu 24.04.3 LTS (Noble
    Numbat)
12Machine:
  12Type Laptop 12System LENOVO 12product 20L9CTO1WW 12v ThinkPad T580
    12serial <superuser required> 12Chassis 12type 10 12serial <superuser required>
  12Mobo LENOVO 12model 20L9CTO1WW 12v SDK0R32862 WIN 12serial <superuser required>
    12part-nu LENOVO_MT_20L9_BU_Think_FM_ThinkPad T580 12uuid <superuser required>
    12UEFI LENOVO 12v N27ET29W (1.15 ) 12date 08/08/2018
12Battery:
  12ID-1 BAT0 12charge 28.3 Wh (98.3%) 12condition 28.8/31.9 Wh (90.2%) 12volts 16.9
    12min 15.2 12model LGC 01AV493 12type Li-poly 12serial <filter> 12status not charging
    12cycles 23
  12ID-2 BAT1 12charge 57.7 Wh (86.9%) 12condition 66.4/71.1 Wh (93.4%) 12power 6.6 W
    12volts 12.2 12min 11.2 12model LGC 01AV492 12type Li-ion 12serial <filter>
    12status discharging 12cycles 26
12CPU:
  12Info 12model Intel Core i7-8650U 12bits 64 12type MT MCP 12arch Coffee Lake
    12gen core 8 12level v3 12note check 12built 2017 12process Intel 14nm 12family 6
    12model-id 0x8E (142) 12stepping 0xA (10) 12microcode 0xF6
  12Topology 12cpus 1x 12cores 4 12tpc 2 12threads 8 12smt enabled 12cache 12L1 256 KiB
    12desc d-4x32 KiB; i-4x32 KiB 12L2 1024 KiB 12desc 4x256 KiB 12L3 8 MiB 12desc 1x8 MiB
  12Speed (MHz) 12avg 1347 12high 1703 12min/max 400/4200 12scaling 12driver intel_pstate
    12governor powersave 12cores 121 1700 122 1640 123 1700 124 400 125 400 126 1632 127 1601
    128 1703 12bogomips 33599
  12Flags avx avx2 ht lm nx pae sse sse2 sse3 sse4_1 sse4_2 ssse3 vmx
  12Vulnerabilities
  12Type gather_data_sampling 12status Vulnerable
  12Type ghostwrite 12status Not affected
  12Type indirect_target_selection 12status Not affected
  12Type itlb_multihit 12status KVM: Split huge pages
  12Type l1tf 12mitigation PTE Inversion; VMX: conditional cache flushes, SMT
    vulnerable
  12Type mds 12mitigation Clear CPU buffers; SMT vulnerable
  12Type meltdown 12mitigation PTI
  12Type mmio_stale_data 12mitigation Clear CPU buffers; SMT vulnerable
  12Type reg_file_data_sampling 12status Not affected
  12Type retbleed 12mitigation IBRS
  12Type spec_rstack_overflow 12status Not affected
  12Type spec_store_bypass 12mitigation Speculative Store Bypass disabled via
    prctl
  12Type spectre_v1 12mitigation usercopy/swapgs barriers and __user pointer
    sanitization
  12Type spectre_v2 12mitigation IBRS; IBPB: conditional; STIBP: conditional;
    RSB filling; PBRSB-eIBRS: Not affected; BHI: Not affected
  12Type srbds 12mitigation Microcode
  12Type tsx_async_abort 12mitigation TSX disabled
12Graphics:
  12Device-1 Intel UHD Graphics 620 12vendor Lenovo 12driver i915 12v kernel
    12arch Gen-9.5 12process Intel 14nm 12built 2016-20 12ports 12active eDP-1 12empty DP-1,
    DP-2, HDMI-A-1, HDMI-A-2 12bus-ID 00:02.0 12chip-ID 8086:5917 12class-ID 0300
  12Device-2 Bison SunplusIT Integrated Camera 12driver uvcvideo 12type USB 12rev 2.0
    12speed 480 Mb/s 12lanes 1 12mode 2.0 12bus-ID 1-8:3 12chip-ID 5986:2113 12class-ID 0e02
  12Display wayland 12server X.org 12v 1.21.1.11 12with Xwayland 12v 23.2.6
    12compositor gnome-shell 12driver 12gpu i915 12display-ID 0
  12Monitor-1 eDP-1 12model Lenovo 0x40ba 12built 2018 12res 1920x1080 12dpi 142
    12gamma 1.2 12size 344x194mm (13.54x7.64") 12diag 395mm (15.5") 12ratio 16:9
    12modes 1920x1080
  12API EGL 12v 1.5 12hw 12drv intel iris 12platforms 12device 0 12drv iris 12device 1
    12drv swrast 12gbm 12drv iris 12surfaceless 12drv iris 12wayland 12drv iris 12x11 12drv iris
  12API OpenGL 12v 4.6 12compat-v 4.5 12vendor intel mesa 12v 25.0.7-0ubuntu0.24.04.2
    12glx-v 1.4 12direct-render yes 12renderer Mesa Intel UHD Graphics 620 (KBL GT2)
    12device-ID 8086:5917 12memory 15.23 GiB 12unified yes 12display-ID :0.0
12Audio:
  12Device-1 Intel Sunrise Point-LP HD Audio 12vendor Lenovo 12driver snd_hda_intel
    12v kernel 12alternate snd_soc_avs,snd_sof_pci_intel_skl 12bus-ID 00:1f.3
    12chip-ID 8086:9d71 12class-ID 0403
  12API ALSA 12v k6.14.0-29-generic 12status kernel-api
    12tools alsactl,alsamixer,amixer
  12Server-1 PipeWire 12v 1.0.5 12status active 12with 121 pipewire-pulse 12status active
    122 wireplumber 12status active 123 pipewire-alsa 12type plugin
    12tools pactl,pw-cat,pw-cli,wpctl
12Network:
  12Device-1 Intel Ethernet I219-LM 12vendor Lenovo 12driver e1000e 12v kernel 12port N/A
    12bus-ID 00:1f.6 12chip-ID 8086:15d7 12class-ID 0200
  12IF enp0s31f6 12state down 12mac <filter>
  12Device-2 Intel Wireless 8265 / 8275 12driver iwlwifi 12v kernel 12pcie 12gen 1
    12speed 2.5 GT/s 12lanes 1 12bus-ID 04:00.0 12chip-ID 8086:24fd 12class-ID 0280
  12IF wlp4s0 12state up 12mac <filter>
  12Info 12services NetworkManager, systemd-timesyncd, wpa_supplicant
12Bluetooth:
  12Device-1 Intel Bluetooth wireless interface 12driver btusb 12v 0.8 12type USB
    12rev 2.0 12speed 12 Mb/s 12lanes 1 12mode 1.1 12bus-ID 1-7:2 12chip-ID 8087:0a2b
    12class-ID e001
  12Report hciconfig 12ID hci0 12rfk-id 3 12state up 12address <filter> 12bt-v 4.2
    12lmp-v 8 12sub-v 100 12hci-v 8 12rev 100 12class-ID 6c010c
  12Info 12acl-mtu 1021:4 12sco-mtu 96:6 12link-policy rswitch hold sniff
    12link-mode peripheral accept 12service-classes rendering, capturing, audio,
    telephony
12Drives:
  12Local Storage 12total 476.94 GiB 12used 15.12 GiB (3.2%)
  12SMART Message Unable to run smartctl. Root privileges required.
  12ID-1 /dev/nvme0n1 12maj-min 259:0 12vendor Samsung 12model MZVLB512HAJQ-000L7
    12size 476.94 GiB 12block-size 12physical 512 B 12logical 512 B 12speed 31.6 Gb/s
    12lanes 4 12tech SSD 12serial <filter> 12fw-rev 4L2QEXA7 12temp 28.9 C 12scheme GPT
12Partition:
  12ID-1 / 12raw-size 475.89 GiB 12size 467.35 GiB (98.21%) 12used 15.12 GiB (3.2%)
    12fs ext4 12dev /dev/nvme0n1p2 12maj-min 259:2
  12ID-2 /boot/efi 12raw-size 1.05 GiB 12size 1.05 GiB (99.80%) 12used 6.1 MiB (0.6%)
    12fs vfat 12dev /dev/nvme0n1p1 12maj-min 259:1
12Swap:
  12Kernel 12swappiness 60 (default) 12cache-pressure 100 (default) 12zswap no
  12ID-1 swap-1 12type file 12size 8 GiB 12used 0 KiB (0.0%) 12priority -2
    12file /swap.img
12Sensors:
  12System Temperatures 12cpu 40.0 C 12mobo N/A
  12Fan Speeds (rpm) N/A
12Info:
  12Memory 12total 32 GiB 12available 31.19 GiB 12used 1.67 GiB (5.3%)
  12Processes 280 12Power 12uptime 34m 12states freeze,mem,disk 12suspend deep
    12avail s2idle 12wakeups 1 12hibernate platform 12avail shutdown, reboot, suspend,
    test_resume 12image 12.45 GiB 12services gsd-power, power-profiles-daemon,
    thermald, upowerd 12Init systemd 12v 255 12target graphical (5) 12default graphical
    12tool systemctl
  12Packages 1606 12pm dpkg 12pkgs 1596 12libs 844 12tools apt,apt-get 12pm snap 12pkgs 10
    12Compilers N/A 12Client Unknown Client: codex-x86_64-unknown-linux-musl
    12inxi 3.3.34
```

## CPU

Command: `lscpu`

```
Architecture:                            x86_64
CPU op-mode(s):                          32-bit, 64-bit
Address sizes:                           39 bits physical, 48 bits virtual
Byte Order:                              Little Endian
CPU(s):                                  8
On-line CPU(s) list:                     0-7
Vendor ID:                               GenuineIntel
Model name:                              Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
CPU family:                              6
Model:                                   142
Thread(s) per core:                      2
Core(s) per socket:                      4
Socket(s):                               1
Stepping:                                10
CPU(s) scaling MHz:                      20%
CPU max MHz:                             4200.0000
CPU min MHz:                             400.0000
BogoMIPS:                                4199.88
Flags:                                   fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc art arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc cpuid aperfmperf pni pclmulqdq dtes64 monitor ds_cpl vmx smx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm 3dnowprefetch cpuid_fault epb pti ssbd ibrs ibpb stibp tpr_shadow flexpriority ept vpid ept_ad fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid mpx rdseed adx smap clflushopt intel_pt xsaveopt xsavec xgetbv1 xsaves dtherm ida arat pln pts hwp hwp_notify hwp_act_window hwp_epp vnmi md_clear flush_l1d arch_capabilities
Virtualization:                          VT-x
L1d cache:                               128 KiB (4 instances)
L1i cache:                               128 KiB (4 instances)
L2 cache:                                1 MiB (4 instances)
L3 cache:                                8 MiB (1 instance)
NUMA node(s):                            1
NUMA node0 CPU(s):                       0-7
Vulnerability Gather data sampling:      Vulnerable
Vulnerability Ghostwrite:                Not affected
Vulnerability Indirect target selection: Not affected
Vulnerability Itlb multihit:             KVM: Mitigation: Split huge pages
Vulnerability L1tf:                      Mitigation; PTE Inversion; VMX conditional cache flushes, SMT vulnerable
Vulnerability Mds:                       Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Meltdown:                  Mitigation; PTI
Vulnerability Mmio stale data:           Mitigation; Clear CPU buffers; SMT vulnerable
Vulnerability Reg file data sampling:    Not affected
Vulnerability Retbleed:                  Mitigation; IBRS
Vulnerability Spec rstack overflow:      Not affected
Vulnerability Spec store bypass:         Mitigation; Speculative Store Bypass disabled via prctl
Vulnerability Spectre v1:                Mitigation; usercopy/swapgs barriers and __user pointer sanitization
Vulnerability Spectre v2:                Mitigation; IBRS; IBPB conditional; STIBP conditional; RSB filling; PBRSB-eIBRS Not affected; BHI Not affected
Vulnerability Srbds:                     Mitigation; Microcode
Vulnerability Tsx async abort:           Mitigation; TSX disabled
```

## CPU (/proc/cpuinfo key fields)

Command: `grep -E '(^model name|^vendor_id|^cpu family|^cpu MHz|^cache size)' /proc/cpuinfo | uniq -c || true`

```
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 900.006
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 400.000
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 400.000
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 900.118
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 899.584
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 899.461
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 900.030
      1 cache size	: 8192 KB
      1 vendor_id	: GenuineIntel
      1 cpu family	: 6
      1 model name	: Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
      1 cpu MHz		: 900.121
      1 cache size	: 8192 KB
```

## Memory Summary

Command: `free -h`

```
               total        used        free      shared  buff/cache   available
Mem:            31Gi       1.7Gi        26Gi       253Mi       3.9Gi        29Gi
Swap:          8.0Gi          0B       8.0Gi
```

## Memory (dmidecode)

Command: `sudo dmidecode -t memory`

```
# dmidecode 3.5
Getting SMBIOS data from sysfs.
SMBIOS 3.0.0 present.

Handle 0x0003, DMI type 16, 23 bytes
Physical Memory Array
	Location: System Board Or Motherboard
	Use: System Memory
	Error Correction Type: None
	Maximum Capacity: 32 GB
	Error Information Handle: Not Provided
	Number Of Devices: 2

Handle 0x0004, DMI type 17, 40 bytes
Memory Device
	Array Handle: 0x0003
	Error Information Handle: Not Provided
	Total Width: 64 bits
	Data Width: 64 bits
	Size: 16 GB
	Form Factor: SODIMM
	Set: None
	Locator: ChannelA-DIMM0
	Bank Locator: BANK 0
	Type: DDR4
	Type Detail: Synchronous Unbuffered (Unregistered)
	Speed: 2400 MT/s
	Manufacturer: Samsung
	Serial Number: 23EDB9C6
	Asset Tag: None
	Part Number: M471A2K43CB1-CRC    
	Rank: 2
	Configured Memory Speed: 2400 MT/s
	Minimum Voltage: Unknown
	Maximum Voltage: Unknown
	Configured Voltage: 1.2 V

Handle 0x0005, DMI type 17, 40 bytes
Memory Device
	Array Handle: 0x0003
	Error Information Handle: Not Provided
	Total Width: 64 bits
	Data Width: 64 bits
	Size: 16 GB
	Form Factor: SODIMM
	Set: None
	Locator: ChannelB-DIMM0
	Bank Locator: BANK 2
	Type: DDR4
	Type Detail: Synchronous Unbuffered (Unregistered)
	Speed: 2400 MT/s
	Manufacturer: Samsung
	Serial Number: 23EDBAE4
	Asset Tag: None
	Part Number: M471A2K43CB1-CRC    
	Rank: 2
	Configured Memory Speed: 2400 MT/s
	Minimum Voltage: Unknown
	Maximum Voltage: Unknown
	Configured Voltage: 1.2 V

```

## Memory (lshw)

Command: `sudo lshw -short -C memory`

```
H/W path               Device          Class          Description
=================================================================
/0/3                                   memory         32GiB System Memory
/0/3/0                                 memory         16GiB SODIMM DDR4 Synchronous Unbuffered (Unregistered) 2400 MHz (0.4 ns)
/0/3/1                                 memory         16GiB SODIMM DDR4 Synchronous Unbuffered (Unregistered) 2400 MHz (0.4 ns)
/0/7                                   memory         256KiB L1 cache
/0/8                                   memory         1MiB L2 cache
/0/9                                   memory         8MiB L3 cache
/0/b                                   memory         128KiB BIOS
/0/100/1f.2                            memory         Memory controller
```

## Block Devices

Command: `lsblk -o NAME,MODEL,SERIAL,SIZE,ROTA,TYPE,FSTYPE,MOUNTPOINT,UUID`

```
NAME        MODEL                      SERIAL              SIZE ROTA TYPE FSTYPE   MOUNTPOINT                          UUID
loop0                                                     73.9M    0 loop squashfs /snap/core22/2045                   
loop1                                                    245.1M    0 loop squashfs /snap/firefox/6565                  
loop2                                                     11.1M    0 loop squashfs /snap/firmware-updater/167          
loop3                                                        4K    0 loop squashfs /snap/bare/5                        
loop4                                                      516M    0 loop squashfs /snap/gnome-42-2204/202             
loop5                                                     10.8M    0 loop squashfs /snap/snap-store/1270               
loop6                                                     91.7M    0 loop squashfs /snap/gtk-common-themes/1535        
loop7                                                     49.3M    0 loop squashfs /snap/snapd/24792                   
loop8                                                      576K    0 loop squashfs /snap/snapd-desktop-integration/315 
sda         SD/MMC                     20120501030900000     0B    0 disk                                              
nvme0n1     SAMSUNG MZVLB512HAJQ-000L7 S3TNNF0K896399    476.9G    0 disk                                              
├─nvme0n1p1                                                  1G    0 part vfat     /boot/efi                           47F5-98F2
└─nvme0n1p2                                              475.9G    0 part ext4     /                                   241f5c57-9de4-4b42-a61f-cb8106de2fa0
```

## NVMe List

Command: `nvme list`

```
Node                  Generic               SN                   Model                                    Namespace  Usage                      Format           FW Rev  
--------------------- --------------------- -------------------- ---------------------------------------- ---------- -------------------------- ---------------- --------
/dev/nvme0n1          /dev/ng0n1            S3TNNF0K896399       SAMSUNG MZVLB512HAJQ-000L7               0x1         19.01  GB / 512.11  GB    512   B +  0 B   4L2QEXA7
```

## SMART Health (#)

Command: `sudo smartctl -H #`

(not available or failed)

## PCI (VGA/Display/3D)

Command: `lspci -nn | grep -i -E 'vga|3d|display'`

```
00:02.0 VGA compatible controller [0300]: Intel Corporation UHD Graphics 620 [8086:5917] (rev 07)
00:16.3 Serial controller [0700]: Intel Corporation Sunrise Point-LP Active Management Technology - SOL [8086:9d3d] (rev 21)
```

## PCI (Network)

Command: `lspci -nn | grep -i -E 'network|ethernet|wireless'`

```
00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet Connection (4) I219-LM [8086:15d7] (rev 21)
04:00.0 Network controller [0280]: Intel Corporation Wireless 8265 / 8275 [8086:24fd] (rev 78)
```

## PCI (Full)

Command: `lspci -nn`

```
00:00.0 Host bridge [0600]: Intel Corporation Xeon E3-1200 v6/7th Gen Core Processor Host Bridge/DRAM Registers [8086:5914] (rev 08)
00:02.0 VGA compatible controller [0300]: Intel Corporation UHD Graphics 620 [8086:5917] (rev 07)
00:04.0 Signal processing controller [1180]: Intel Corporation Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem [8086:1903] (rev 08)
00:08.0 System peripheral [0880]: Intel Corporation Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model [8086:1911]
00:14.0 USB controller [0c03]: Intel Corporation Sunrise Point-LP USB 3.0 xHCI Controller [8086:9d2f] (rev 21)
00:14.2 Signal processing controller [1180]: Intel Corporation Sunrise Point-LP Thermal subsystem [8086:9d31] (rev 21)
00:16.0 Communication controller [0780]: Intel Corporation Sunrise Point-LP CSME HECI #1 [8086:9d3a] (rev 21)
00:16.3 Serial controller [0700]: Intel Corporation Sunrise Point-LP Active Management Technology - SOL [8086:9d3d] (rev 21)
00:1c.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express Root Port #1 [8086:9d10] (rev f1)
00:1c.6 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express Root Port #7 [8086:9d16] (rev f1)
00:1d.0 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express Root Port #9 [8086:9d18] (rev f1)
00:1d.2 PCI bridge [0604]: Intel Corporation Sunrise Point-LP PCI Express Root Port #11 [8086:9d1a] (rev f1)
00:1f.0 ISA bridge [0601]: Intel Corporation Sunrise Point LPC/eSPI Controller [8086:9d4e] (rev 21)
00:1f.2 Memory controller [0580]: Intel Corporation Sunrise Point-LP PMC [8086:9d21] (rev 21)
00:1f.3 Audio device [0403]: Intel Corporation Sunrise Point-LP HD Audio [8086:9d71] (rev 21)
00:1f.4 SMBus [0c05]: Intel Corporation Sunrise Point-LP SMBus [8086:9d23] (rev 21)
00:1f.6 Ethernet controller [0200]: Intel Corporation Ethernet Connection (4) I219-LM [8086:15d7] (rev 21)
04:00.0 Network controller [0280]: Intel Corporation Wireless 8265 / 8275 [8086:24fd] (rev 78)
07:00.0 PCI bridge [0604]: Intel Corporation JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016] [8086:15c0] (rev 01)
08:00.0 PCI bridge [0604]: Intel Corporation JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016] [8086:15c0] (rev 01)
08:01.0 PCI bridge [0604]: Intel Corporation JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016] [8086:15c0] (rev 01)
08:02.0 PCI bridge [0604]: Intel Corporation JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016] [8086:15c0] (rev 01)
09:00.0 System peripheral [0880]: Intel Corporation JHL6240 Thunderbolt 3 NHI (Low Power) [Alpine Ridge LP 2016] [8086:15bf] (rev 01)
3f:00.0 USB controller [0c03]: Intel Corporation JHL6240 Thunderbolt 3 USB 3.1 Controller (Low Power) [Alpine Ridge LP 2016] [8086:15c1] (rev 01)
40:00.0 Non-Volatile memory controller [0108]: Samsung Electronics Co Ltd NVMe SSD Controller SM981/PM981/PM983 [144d:a808]
```

## USB Devices

Command: `lsusb`

```
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 002: ID 8087:0a2b Intel Corp. Bluetooth wireless interface
Bus 001 Device 003: ID 5986:2113 Bison Electronics Inc. SunplusIT Integrated Camera
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 002 Device 002: ID 0bda:0316 Realtek Semiconductor Corp. Card Reader
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
```

## Network (IP links)

Command: `ip -br a`

```
lo               UNKNOWN        127.0.0.1/8 ::1/128 
enp0s31f6        DOWN           
wlp4s0           UP             10.10.15.131/24 fe80::4a4b:8a3e:856e:af14/64 
```

## Wireless (iw)

Command: `iw dev`

```
phy#0
	Unnamed/non-netdev interface
		wdev 0x4
		addr 18:1d:ea:ab:d3:ef
		type P2P-device
	Interface wlp4s0
		ifindex 3
		wdev 0x1
		addr 18:1d:ea:ab:d3:ee
		ssid NewWave-5G
		type managed
		channel 153 (5765 MHz), width: 80 MHz, center1: 5775 MHz
		txpower 22.00 dBm
		multicast TXQ:
			qsz-byt	qsz-pkt	flows	drops	marks	overlmt	hashcol	tx-bytes	tx-packets
			0	0	0	0	0	0	0	0		0
```

## RFKill

Command: `rfkill list`

```
0: tpacpi_bluetooth_sw: Bluetooth
	Soft blocked: no
	Hard blocked: no
2: phy0: Wireless LAN
	Soft blocked: no
	Hard blocked: no
3: hci0: Bluetooth
	Soft blocked: no
	Hard blocked: no
```

## ALSA Playback Devices

Command: `aplay -l`

```
**** List of PLAYBACK Hardware Devices ****
card 0: PCH [HDA Intel PCH], device 0: ALC257 Analog [ALC257 Analog]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 3: HDMI 0 [HDMI 0]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 7: HDMI 1 [HDMI 1]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 0: PCH [HDA Intel PCH], device 8: HDMI 2 [HDMI 2]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

## ALSA Capture Devices

Command: `arecord -l`

```
**** List of CAPTURE Hardware Devices ****
card 0: PCH [HDA Intel PCH], device 0: ALC257 Analog [ALC257 Analog]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

## PulseAudio Cards

Command: `pactl list short cards`

```
48	alsa_card.pci-0000_00_1f.3	alsa
```

## Bluetooth Controller

Command: `bluetoothctl show`

```
Controller 18:1D:EA:AB:D3:F2 (public)
	Manufacturer: 0x0002 (2)
	Version: 0x08 (8)
	Name: portaptty
	Alias: portaptty
	Class: 0x006c010c (7078156)
	Powered: yes
	Discoverable: no
	DiscoverableTimeout: 0x000000b4 (180)
	Pairable: no
	UUID: A/V Remote Control        (0000110e-0000-1000-8000-00805f9b34fb)
	UUID: Handsfree Audio Gateway   (0000111f-0000-1000-8000-00805f9b34fb)
	UUID: PnP Information           (00001200-0000-1000-8000-00805f9b34fb)
	UUID: Audio Sink                (0000110b-0000-1000-8000-00805f9b34fb)
	UUID: Audio Source              (0000110a-0000-1000-8000-00805f9b34fb)
	UUID: A/V Remote Control Target (0000110c-0000-1000-8000-00805f9b34fb)
	UUID: Generic Access Profile    (00001800-0000-1000-8000-00805f9b34fb)
	UUID: Generic Attribute Profile (00001801-0000-1000-8000-00805f9b34fb)
	UUID: Device Information        (0000180a-0000-1000-8000-00805f9b34fb)
	UUID: Handsfree                 (0000111e-0000-1000-8000-00805f9b34fb)
	Modalias: usb:v1D6Bp0246d0548
	Discovering: no
	Roles: central
	Roles: peripheral
Advertising Features:
	ActiveInstances: 0x00 (0)
	SupportedInstances: 0x05 (5)
	SupportedIncludes: appearance
	SupportedIncludes: local-name
```

## Battery (UPower)

Command: `upower -i /org/freedesktop/UPower/devices/battery_BAT0`

```
  native-path:          BAT0
  vendor:               LGC
  model:                01AV493
  serial:               565
  power supply:         yes
  updated:              Fri 12 Sep 2025 11:13:40 PM CDT (3 seconds ago)
  has history:          yes
  has statistics:       yes
  battery
    present:             yes
    rechargeable:        yes
    state:               fully-charged
    warning-level:       none
    energy:              28.3 Wh
    energy-empty:        0 Wh
    energy-full:         28.79 Wh
    energy-full-design:  31.92 Wh
    energy-rate:         0 W
    voltage:             16.893 V
    charge-cycles:       23
    percentage:          98%
    capacity:            90.1942%
    technology:          lithium-polymer
    icon-name:          'battery-full-charged-symbolic'

```

## Sensors

Command: `sudo sensors`

```
thinkpad-isa-0000
Adapter: ISA adapter
fan1:           0 RPM
CPU:          +40.0°C  
GPU:              N/A  
temp3:         +0.0°C  
temp4:         +0.0°C  
temp5:         +0.0°C  
temp6:         +0.0°C  
temp7:         +0.0°C  
temp8:         +0.0°C  

ucsi_source_psy_USBC000:002-isa-0000
Adapter: ISA adapter
in0:           0.00 V  (min =  +0.00 V, max =  +0.00 V)
curr1:         0.00 A  (max =  +0.00 A)

coretemp-isa-0000
Adapter: ISA adapter
Package id 0:  +39.0°C  (high = +100.0°C, crit = +100.0°C)
Core 0:        +37.0°C  (high = +100.0°C, crit = +100.0°C)
Core 1:        +37.0°C  (high = +100.0°C, crit = +100.0°C)
Core 2:        +37.0°C  (high = +100.0°C, crit = +100.0°C)
Core 3:        +39.0°C  (high = +100.0°C, crit = +100.0°C)

nvme-pci-4000
Adapter: PCI adapter
Composite:    +28.9°C  (low  = -273.1°C, high = +80.8°C)
                       (crit = +81.8°C)
Sensor 1:     +28.9°C  (low  = -273.1°C, high = +65261.8°C)
Sensor 2:     +33.9°C  (low  = -273.1°C, high = +65261.8°C)

BAT0-acpi-0
Adapter: ACPI interface
in0:          16.89 V  
power1:        0.00 W  

iwlwifi_1-virtual-0
Adapter: Virtual device
temp1:        +30.0°C  

pch_skylake-virtual-0
Adapter: Virtual device
temp1:        +36.5°C  

ucsi_source_psy_USBC000:001-isa-0000
Adapter: ISA adapter
in0:           0.00 V  (min =  +0.00 V, max =  +0.00 V)
curr1:         0.00 A  (max =  +0.00 A)

BAT1-acpi-0
Adapter: ACPI interface
in0:          12.15 V  
power1:        7.21 W  

acpitz-acpi-0
Adapter: ACPI interface
temp1:        +40.0°C  

```

## FWUPD Devices

Command: `fwupdmgr get-devices`

```
LENOVO 20L9CTO1WW
│
├─Core™ i7-8650U CPU @ 1.90GHz:
│     Device ID:          4bde70ba4e39b28f9eab1628f9dd6e6244c03027
│     Current version:    0x000000f6
│     Vendor:             Intel
│     GUIDs:              561403e8-143a-5071-ab09-bf5e4c146983 ← CPUID\PRO_0&FAM_06&MOD_8E
│                         54bdc429-0179-5019-9cb6-8a343324c97c ← CPUID\PRO_0&FAM_06&MOD_8E&STP_A
│     Device Flags:       • Internal device
│   
├─Intel Management Engine:
│     Device ID:          915c6e263590a49f57b9cad3c1a832ead51e859f
│     Summary:            UEFI System Resource Table device (updated via NVRAM)
│     Current version:    184.55.3510
│     Minimum Version:    0.0.1
│     Vendor:             Lenovo (DMI:LENOVO)
│     Update State:       Success
│     Problems:           [31m[1m• Device requires AC power to be connected[0m
│     GUID:               ae82a157-cc81-419a-88e4-a983a76075db
│     Device Flags:       • Internal device
│                         • System requires external power source
│                         • Supported on remote server
│                         • Needs a reboot after installation
│                         • Device is usable for the duration of the update
│                         • Updatable
│     Device Requests:    • Message
│   
├─MZVLB512HAJQ-000L7:
│     Device ID:          be29aadda98b637d33b6b740ff7b367f61886a31
│     Summary:            NVM Express solid state drive
│     Current version:    4L2QEXA7
│     Vendor:             Samsung (NVME:0x144D)
│     Serial Number:      S3TNNF0K896399
│     Problems:           [31m[1m• Device requires AC power to be connected[0m
│     GUIDs:              47335265-a509-51f7-841e-1c94911af66b ← NVME\VEN_144D&DEV_A808
│                         c9d531ea-ee7d-5562-8def-c64d0d144813 ← NVME\VEN_144D&DEV_A808&SUBSYS_144DA801
│                         79d6cfae-a5a2-5936-9248-5aebd23480f7 ← SAMSUNG MZVLB512HAJQ-000L7
│     Device Flags:       • Internal device
│                         • System requires external power source
│                         • Supported on remote server
│                         • Needs a reboot after installation
│                         • Device is usable for the duration of the update
│                         • Updatable
│                         • Signed Payload
│   
├─System Firmware:
│ │   Device ID:          6dedc6e4a7e18dfcbdd949462e92e4cd5108c426
│ │   Summary:            UEFI System Resource Table device (updated via NVRAM)
│ │   Current version:    0.1.15
│ │   Minimum Version:    0.0.1
│ │   Vendor:             Lenovo (DMI:LENOVO)
│ │   Update State:       Success
│ │   Problems:           [31m[1m• Device requires AC power to be connected[0m
│ │   GUID:               52dd29cd-24b9-4d60-8a45-e72670901924
│ │   Device Flags:       • Internal device
│ │                       • System requires external power source
│ │                       • Supported on remote server
│ │                       • Needs a reboot after installation
│ │                       • Cryptographic hash verification is available
│ │                       • Device is usable for the duration of the update
│ │                       • Updatable
│ │   Device Requests:    • Message
│ │ 
│ ├─AMT [unprovisioned]:
│ │     Device ID:        8d5470e73fd9a31eaa460b2b6aea95483fe3f14c
│ │     Summary:          Hardware and firmware technology for remote out-of-band management
│ │     Current version:  11.8.55.3510
│ │     Bootloader Version:11.8.55.3510
│ │     Vendor:           Intel Corporation (MEI:0x8086)
│ │     GUIDs:            12f80028-b4b7-4b2d-aca8-46e0ff65814c
│ │                       73873541-e967-5a4f-aeb4-22d1901fc940 ← MEI\VEN_8086&DEV_9D3A
│ │                       0b00cceb-d149-547f-876c-8db6a450850e ← MEI\VEN_8086&DEV_9D3A&SUBSYS_17AA225A
│ │     Device Flags:     • Internal device
│ │   
│ └─UEFI dbx:
│       Device ID:        362301da643102b9f38477387e2193e57abaa590
│       Summary:          UEFI revocation database
│       Current version:  20230501
│       Minimum Version:  20230501
│       Vendor:           UEFI:Microsoft
│       Install Duration: 1 second
│       GUIDs:            5971a208-da00-5fce-b5f5-1234342f9cf7 ← UEFI\CRT_A9087D1044AD18F7A94916D284CBC01827CF23CD8F60B79072C9CAA1FEF4D649&ARCH_X64
│                         f8ba2887-9411-5c36-9cee-88995bb39731 ← UEFI\CRT_A1117F516A32CEFCBA3F2D1ACE10A87972FD6BBE8FE0D0B996E09E65D802A503&ARCH_X64
│       Device Flags:     • Internal device
│                         • Updatable
│                         • Needs a reboot after installation
│                         • Device is usable for the duration of the update
│                         • Only version upgrades are allowed
│                         • Signed Payload
│     
├─TPM:
│     Device ID:          c6a80ac3a22083423992a3cb15018989f37834d6
│     Current version:    73.4.17568.4452
│     Vendor:             ST Microelectronics (TPM:STM)
│     Problems:           [31m[1m• Device requires AC power to be connected[0m
│     GUIDs:              84df3581-f896-54d2-bd1a-372602f04c32 ← TPM\VEN_STM&DEV_0001
│                         bfaed10a-bbc1-525b-a329-35da2f63e918 ← TPM\VEN_STM&MOD_
│                         70b7b833-7e1a-550a-a291-b94a12d0f319 ← TPM\VEN_STM&DEV_0001&VER_2.0
│                         06f005e9-cb62-5d1a-82d9-13c534c53c48 ← TPM\VEN_STM&MOD_&VER_2.0
│     Device Flags:       • Internal device
│                         • System requires external power source
│                         • Needs a reboot after installation
│                         • Device can recover flash failures
│                         • Updatable
│                         • Full disk encryption secrets may be invalidated when updating
│                         • Signed Payload
│   
├─Thunderbolt host controller:
│     Device ID:          d107848da0c59f4c897f0f49c3b5c65bf5138662
│     Summary:            Unmatched performance for high-speed I/O
│     Current version:    14.00
│     Vendor:             Lenovo (THUNDERBOLT:0x0109, TBT:0x0109)
│     Problems:           [31m[1m• Device requires AC power to be connected[0m
│     GUIDs:              72021ca5-cd76-5b37-85ca-d39e7184bf77 ← THUNDERBOLT\VEN_0109&DEV_1703
│                         5bed8b5c-e5c2-547b-8806-6603930184ee ← TBT-01091703-native
│                         f69aca31-6f9e-5b23-93ec-9683b02d66eb ← TBT-01091703-native-controller0-0
│     Device Flags:       • Internal device
│                         • System requires external power source
│                         • Supported on remote server
│                         • Device stages updates
│                         • Updatable
│                         • Signed Payload
│   
├─UEFI Device Firmware:
│     Device ID:          3d9664623e19c7f7218f60fccc373d3e7faa4fb7
│     Summary:            UEFI System Resource Table device (updated via NVRAM)
│     Current version:    65541
│     Minimum Version:    65541
│     Vendor:             DMI:LENOVO
│     Update State:       Success
│     Problems:           [31m[1m• Device requires AC power to be connected[0m
│     GUID:               61b58b80-a21a-4185-8913-4bddfc68d6c9
│     Device Flags:       • Internal device
│                         • System requires external power source
│                         • Needs a reboot after installation
│                         • Device is usable for the duration of the update
│                         • Updatable
│     Device Requests:    • Message
│   
└─UHD Graphics 620:
      Device ID:          5792b48846ce271fab11c4a545f7a3df0d36e00a
      Current version:    07
      Vendor:             Intel Corporation (PCI:0x8086)
      GUIDs:              8b72a10c-1279-5f8e-a28a-34fb11a58240 ← PCI\VEN_8086&DEV_5917
                          6abd5dd1-9f3b-5d12-971c-01eeedc01e1a ← PCI\VEN_8086&DEV_5917&SUBSYS_17AA225A
      Device Flags:       • Internal device
                          • Cryptographic hash verification is available
    
```

## DRM GPUs

Command: `ls -l /sys/class/drm || true`

```
total 0
lrwxrwxrwx 1 root root    0 Sep 12 22:38 card1 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1
lrwxrwxrwx 1 root root    0 Sep 12 22:39 card1-DP-1 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1/card1-DP-1
lrwxrwxrwx 1 root root    0 Sep 12 22:39 card1-DP-2 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1/card1-DP-2
lrwxrwxrwx 1 root root    0 Sep 12 22:39 card1-eDP-1 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1/card1-eDP-1
lrwxrwxrwx 1 root root    0 Sep 12 22:39 card1-HDMI-A-1 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1/card1-HDMI-A-1
lrwxrwxrwx 1 root root    0 Sep 12 22:39 card1-HDMI-A-2 -> ../../devices/pci0000:00/0000:00:02.0/drm/card1/card1-HDMI-A-2
lrwxrwxrwx 1 root root    0 Sep 12 22:39 renderD128 -> ../../devices/pci0000:00/0000:00:02.0/drm/renderD128
-r--r--r-- 1 root root 4096 Sep 12 23:08 version
```

## OpenGL Info

Command: `glxinfo -B`

```
name of display: :0
display: :0  screen: 0
direct rendering: Yes
Extended renderer info (GLX_MESA_query_renderer):
    Vendor: Intel (0x8086)
    Device: Mesa Intel(R) UHD Graphics 620 (KBL GT2) (0x5917)
    Version: 25.0.7
    Accelerated: yes
    Video memory: 15971MB
    Unified memory: yes
    Preferred profile: core (0x1)
    Max core profile version: 4.6
    Max compat profile version: 4.6
    Max GLES1 profile version: 1.1
    Max GLES[23] profile version: 3.2
OpenGL vendor string: Intel
OpenGL renderer string: Mesa Intel(R) UHD Graphics 620 (KBL GT2)
OpenGL core profile version string: 4.6 (Core Profile) Mesa 25.0.7-0ubuntu0.24.04.2
OpenGL core profile shading language version string: 4.60
OpenGL core profile context flags: (none)
OpenGL core profile profile mask: core profile

OpenGL version string: 4.6 (Compatibility Profile) Mesa 25.0.7-0ubuntu0.24.04.2
OpenGL shading language version string: 4.60
OpenGL context flags: (none)
OpenGL profile mask: compatibility profile

OpenGL ES profile version string: OpenGL ES 3.2 Mesa 25.0.7-0ubuntu0.24.04.2
OpenGL ES profile shading language version string: OpenGL ES GLSL ES 3.20

```

## XInput Devices

Command: `xinput list`

```
⎡ Virtual core pointer                    	id=2	[master pointer  (3)]
⎜   ↳ Virtual core XTEST pointer              	id=4	[slave  pointer  (2)]
⎜   ↳ xwayland-pointer:15                     	id=6	[slave  pointer  (2)]
⎜   ↳ xwayland-relative-pointer:15            	id=7	[slave  pointer  (2)]
⎜   ↳ xwayland-pointer-gestures:15            	id=8	[slave  pointer  (2)]
⎣ Virtual core keyboard                   	id=3	[master keyboard (2)]
    ↳ Virtual core XTEST keyboard             	id=5	[slave  keyboard (3)]
    ↳ xwayland-keyboard:15                    	id=9	[slave  keyboard (3)]
```

## lshw (short)

Command: `sudo lshw -short`

```
H/W path               Device          Class          Description
=================================================================
                                       system         20L9CTO1WW (LENOVO_MT_20L9_BU_Think_FM_ThinkPad T580)
/0                                     bus            20L9CTO1WW
/0/3                                   memory         32GiB System Memory
/0/3/0                                 memory         16GiB SODIMM DDR4 Synchronous Unbuffered (Unregistered) 2400 MHz (0.4 ns)
/0/3/1                                 memory         16GiB SODIMM DDR4 Synchronous Unbuffered (Unregistered) 2400 MHz (0.4 ns)
/0/7                                   memory         256KiB L1 cache
/0/8                                   memory         1MiB L2 cache
/0/9                                   memory         8MiB L3 cache
/0/a                                   processor      Intel(R) Core(TM) i7-8650U CPU @ 1.90GHz
/0/b                                   memory         128KiB BIOS
/0/100                                 bridge         Xeon E3-1200 v6/7th Gen Core Processor Host Bridge/DRAM Registers
/0/100/2               /dev/fb0        display        UHD Graphics 620
/0/100/4                               generic        Xeon E3-1200 v5/E3-1500 v5/6th Gen Core Processor Thermal Subsystem
/0/100/8                               generic        Xeon E3-1200 v5/v6 / E3-1500 v5 / 6th/7th/8th Gen Core Processor Gaussian Mixture Model
/0/100/14                              bus            Sunrise Point-LP USB 3.0 xHCI Controller
/0/100/14/0            usb1            bus            xHCI Host Controller
/0/100/14/0/7                          communication  Bluetooth wireless interface
/0/100/14/0/8                          multimedia     Integrated Camera
/0/100/14/1            usb2            bus            xHCI Host Controller
/0/100/14/1/3          scsi0           storage        USB3.0-CRW
/0/100/14/1/3/0.0.0    /dev/sda        disk           SD/MMC
/0/100/14/1/3/0.0.0/0  /dev/sda        disk           
/0/100/14.2                            generic        Sunrise Point-LP Thermal subsystem
/0/100/16                              communication  Sunrise Point-LP CSME HECI #1
/0/100/16.3                            communication  Sunrise Point-LP Active Management Technology - SOL
/0/100/1c                              bridge         Sunrise Point-LP PCI Express Root Port #1
/0/100/1c.6                            bridge         Sunrise Point-LP PCI Express Root Port #7
/0/100/1c.6/0          wlp4s0          network        Wireless 8265 / 8275
/0/100/1d                              bridge         Sunrise Point-LP PCI Express Root Port #9
/0/100/1d/0                            bridge         JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/0                          bridge         JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/0/0                        generic        JHL6240 Thunderbolt 3 NHI (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/1                          bridge         JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/2                          bridge         JHL6240 Thunderbolt 3 Bridge (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/2/0                        bus            JHL6240 Thunderbolt 3 USB 3.1 Controller (Low Power) [Alpine Ridge LP 2016]
/0/100/1d/0/2/0/0      usb3            bus            xHCI Host Controller
/0/100/1d/0/2/0/1      usb4            bus            xHCI Host Controller
/0/100/1d.2                            bridge         Sunrise Point-LP PCI Express Root Port #11
/0/100/1d.2/0          /dev/nvme0      storage        SAMSUNG MZVLB512HAJQ-000L7
/0/100/1d.2/0/0        hwmon4          disk           NVMe disk
/0/100/1d.2/0/2        /dev/ng0n1      disk           NVMe disk
/0/100/1d.2/0/1        /dev/nvme0n1    disk           512GB NVMe disk
/0/100/1d.2/0/1/1                      volume         1074MiB Windows FAT volume
/0/100/1d.2/0/1/2      /dev/nvme0n1p2  volume         475GiB EXT4 volume
/0/100/1f                              bridge         Sunrise Point LPC/eSPI Controller
/0/100/1f/0                            system         PnP device PNP0c02
/0/100/1f/1                            system         PnP device PNP0c02
/0/100/1f/2                            system         PnP device PNP0c02
/0/100/1f/3                            system         PnP device PNP0b00
/0/100/1f/4                            generic        PnP device INT3f0d
/0/100/1f/5                            generic        PnP device LEN0071
/0/100/1f/6                            generic        PnP device LEN009b
/0/100/1f/7                            system         PnP device PNP0c02
/0/100/1f/8                            system         PnP device PNP0c02
/0/100/1f/9                            system         PnP device PNP0c02
/0/100/1f/a                            system         PnP device PNP0c01
/0/100/1f.2                            memory         Memory controller
/0/100/1f.3            card0           multimedia     Sunrise Point-LP HD Audio
/0/100/1f.3/0          input13         input          HDA Intel PCH Mic
/0/100/1f.3/1          input14         input          HDA Intel PCH Headphone
/0/100/1f.3/2          input15         input          HDA Intel PCH HDMI/DP,pcm=3
/0/100/1f.3/3          input16         input          HDA Intel PCH HDMI/DP,pcm=7
/0/100/1f.3/4          input17         input          HDA Intel PCH HDMI/DP,pcm=8
/0/100/1f.4                            bus            Sunrise Point-LP SMBus
/0/100/1f.6            enp0s31f6       network        Ethernet Connection (4) I219-LM
/1                                     power          01AV493
/2                                     power          01AV492
/3                     input0          input          Sleep Button
/4                     input1          input          Lid Switch
/5                     input10         input          Synaptics TM3276-031
/6                     input11         input          TPPS/2 IBM TrackPoint
/7                     input12         input          Video Bus
/8                     input2          input          Power Button
/9                     input3          input          AT Translated Set 2 keyboard
/a                     input7          input          ThinkPad Extra Buttons
```

---

Note: Sections marked as 'skipped' or 'not available' indicate the tool is missing or sudo is disabled.
