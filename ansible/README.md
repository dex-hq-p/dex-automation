# DEX Automation - Ansible Workspace & Infrastructure Management

Thư mục này chứa toàn bộ kịch bản tự động hóa (Ansible Playbooks, Roles, Vars) phục vụ việc đồng bộ môi trường phát triển cục bộ (Local Workspace) và khởi tạo máy chủ (Server Provisioning) cho hệ sinh thái **DEX Automation**.

---

## 🏗 Cấu trúc thư mục (Directory Structure)

```text
ansible/
├── ansible.cfg              # Cấu hình mặc định cho Ansible Core
├── group_vars/              # Quản lý biến theo nhóm môi trường
│   ├── all.yml              # Biến hệ thống toàn cục
│   └── local.yml            # Biến riêng cho môi trường Local Workspace
├── inventories/             # Khai báo các môi trường máy chủ Target
│   ├── local.ini            # Host localhost
│   ├── staging.ini          # Môi trường Staging
│   └── production.ini       # Môi trường Production
├── playbooks/               # Danh sách các kịch bản thực thi
│   ├── site.yml             # Master playbook điều phối toàn hệ thống
│   ├── provision-server.yml # Playbook dựng máy chủ (Docker, Security)
│   └── sync-workspace.yml   # Playbook clone/pull toàn bộ repo dex-*
└── roles/                   # Các Roles tái sử dụng (Reusable Roles)
    ├── common/              # Cài đặt gói ứng dụng cơ bản
    ├── docker/              # Cài đặt và cấu hình Docker Runtime
    ├── security/            # Cấu hình Firewall, SSH Hardening
    └── workspace/           # Tác vụ thao tác với Git/Workspace