.PHONY: sync setup-staging setup-prod lint

# Đồng bộ toàn bộ repo về máy local
sync:
	ansible-playbook -i inventories/local.ini playbooks/sync-workspace.yml