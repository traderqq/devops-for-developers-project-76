install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini playbook.yml --tags setup --ask-vault-pass

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass

ping:
	ansible all -i inventory.ini -m ping --ask-vault-pass

check:
	ansible all -i inventory.ini -a "docker ps" --ask-vault-pass

monitoring:
	ansible-playbook -i inventory.ini playbook.yml --tags monitoring --ask-vault-pass

datadog-status:
	ansible webservers -i inventory.ini -b -a "datadog-agent status" --ask-vault-pass

logs:
	ansible all -i inventory.ini -a "docker logs --tail=50 redmine" --ask-vault-pass

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml

vault-view:
	ansible-vault view group_vars/webservers/vault.yml

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

vault-decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml
