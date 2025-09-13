# Ansible (Local Laptop)

Simple Ansible setup to provision this Ubuntu laptop. It installs packages with apt — nothing else.

## Layout
- `ansible/ansible.cfg` – local Ansible config with localhost inventory.
- `ansible/inventory` – `localhost` using local connection.
- `ansible/site.yml` – main playbook (inline tasks, no roles).
- `ansible/vars.yml` – variables for packages only.
- `scripts/bootstrap.sh` – installs Ansible with apt and runs the playbook.
- `Makefile` – convenience targets.

## Usage
- Bootstrap Ansible without running the playbook: `make bootstrap`
- Provision everything: `make provision`
- Only install packages (tag): `cd ansible && ansible-playbook -K site.yml --tags packages`

## Configure
Edit `ansible/vars.yml`:
- `common_packages`: list of apt packages to install (e.g., curl, tmux, screen, openssh-server, brave-browser).

If `brave-browser` is listed, the Brave apt repo/key are added automatically before installing packages.
