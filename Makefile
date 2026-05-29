VAULT_ARGS = --vault-password-file .vault_pass

install:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini playbook.yml --tags setup $(VAULT_ARGS)

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy $(VAULT_ARGS)

ping:
	ansible all -i inventory.ini -m ping $(VAULT_ARGS)

check:
	ansible all -i inventory.ini -a "docker ps" $(VAULT_ARGS)

monitoring:
	ansible-playbook -i inventory.ini playbook.yml --tags monitoring $(VAULT_ARGS)

datadog-status:
	ansible webservers -i inventory.ini -b -a "datadog-agent status" $(VAULT_ARGS)

logs:
	ansible all -i inventory.ini -a "docker logs --tail=50 redmine" $(VAULT_ARGS)

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml

vault-view:
	ansible-vault view group_vars/webservers/vault.yml

vault-encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml

vault-decrypt:
	ansible-vault decrypt group_vars/webservers/vault.yml
