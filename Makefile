install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini playbook.yml

ping:
	ansible all -i inventory.ini -m ping

check:
	ansible all -i inventory.ini -a "docker --version"
