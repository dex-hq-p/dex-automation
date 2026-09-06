# 🔑 Hướng Dẫn Thiết Lập SSH Key Cho Người Mới (macOS & Linux)

Tài liệu này hướng dẫn chi tiết từng bước tạo khóa xác thực SSH Key, nạp vào `ssh-agent` của hệ điều hành và tích hợp với tài khoản GitHub. Việc cấu hình này giúp bạn kết nối và clone/pull các repository riêng tư (Private Repositories) an toàn mà không cần nhập lại mật khẩu hay token mỗi lần thao tác.

---

## 📋 Trình Tự Thực Hiện (Step-by-Step)

### Bước 1: Khởi tạo thư mục cấu hình SSH

Mở Terminal trên máy Mac/Linux và chạy lệnh sau để đảm bảo thư mục chứa SSH Key đã tồn tại:

```bash
mkdir -p ~/.ssh

ssh-keygen -t ed25519 -C "xxxx"

eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

ssh -T git@github.com