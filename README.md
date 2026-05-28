### Hexlet tests and linter status:
[![Actions Status](https://github.com/traderqq/devops-for-developers-project-76/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/traderqq/devops-for-developers-project-76/actions)

## devops hexlet project #2 (ansible)

### prepare workspace
make install

### check
make ping<br>
make check

### setup servers
make setup

### deploy redmine containers
make deploy

## What's here
for this project following have been set up:
- Yandex Cloud VM x2
- Yandex Cloud Web Load Balancer with HTPPS support and Lets Enrypt certificate
- PostgreSQL cluster (2 nodes)

Redmine 6.2 have been rolled on VMs with Ansible, and accessible only with Load Balancer.

Domain birchcapital.space have been registered and assigned to Load Balancer

Please check working RedMine application here: [https://birchcapital.space](https://birchcapital.space/)

