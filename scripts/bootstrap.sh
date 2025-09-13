#!/usr/bin/env bash
set -euo pipefail

# Bootstrap Ansible on this laptop and run the local playbook.
# Usage: ./scripts/bootstrap.sh [--no-run]

NO_RUN=0
if [[ "${1:-}" == "--no-run" ]]; then
  NO_RUN=1
fi

echo "[bootstrap] Installing Ansible via apt (Ubuntu)..."
sudo apt-get update -y
sudo apt-get install -y ansible

if [[ "$NO_RUN" -eq 1 ]]; then
  echo "[bootstrap] Skipping playbook run (--no-run)."
  exit 0
fi

echo "[bootstrap] Running Ansible playbook locally..."
ANSIBLE_CONFIG_DIR="$(cd "$(dirname "$0")/.." && pwd)/ansible"
cd "$ANSIBLE_CONFIG_DIR"
ansible-playbook -K site.yml
