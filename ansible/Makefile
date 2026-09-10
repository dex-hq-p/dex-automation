.PHONY: sync start stop restart provision provision-local provision-dev

sync:
	ansible-playbook -i inventories/local.ini playbooks/sync-workspace.yml

## ── Runtime Services (PostgreSQL + Keycloak) ─────────────────────────────────

start:
	ansible-playbook -i inventories/local.ini playbooks/provision-server.yml

stop:
	ansible-playbook -i inventories/local.ini playbooks/teardown-server.yml

restart: stop start

## ── Aliases ──────────────────────────────────────────────────────────────────

provision: start
provision-local: start

provision-dev:
	ansible-playbook -i inventories/dev.ini playbooks/provision-server.yml