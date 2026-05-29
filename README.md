### Hexlet tests and linter status:
[![Actions Status](https://github.com/traderqq/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/traderqq/devops-for-developers-project-76/actions)

## devops hexlet project #2 (ansible)

### prepare workspace
make install

### setup servers
make setup

### deploy redmine containers
make deploy

### check
make ping  - basic connection test<br>
make check - list working docker containers on target machines<br>
make logs  - show logs from docker

### vault - we have encrypted /webservers/vault.yml to store secrets here
make vault-view - show vault
make vault-edit - edit vault
make vault-decrypt - decrypt vault back to plain file
make vault-encrypt - encrypt vault

### monitoring
make monitoring - deploy datadog to servers (make setup will deploy everything including datadog)
make datadog-status - check datadog status


## What's here
for this project following have been set up:
- Yandex Cloud VM (2 instances)
- Yandex Cloud Web Load Balancer with HTTPS support and Lets Enrypt certificate
- PostgreSQL cluster (2 nodes)
- added Datadog to monitor 2 backend services

Redmine 6.2 have been rolled on VMs with Ansible, and accessible only with Load Balancer.

Domain birchcapital.space have been registered and assigned to Load Balancer

Please check working RedMine application here: [https://birchcapital.space](https://birchcapital.space/)



[![push](https://github.com/traderqq/devops-for-developers-project-76/actions/workflows/push.yml/badge.svg)](https://github.com/traderqq/devops-for-developers-project-76/actions/workflows/push.yml)
