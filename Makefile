.PHONY: bootstrap provision packages

ANSIBLE_DIR := ansible

bootstrap:
	./scripts/bootstrap.sh --no-run

provision:
	cd $(ANSIBLE_DIR) && ansible-playbook -K site.yml

packages:
	cd $(ANSIBLE_DIR) && ansible-playbook -K site.yml --tags packages
