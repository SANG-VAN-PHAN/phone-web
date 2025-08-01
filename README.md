# 📱 Shopping Phone - E-commerce Website

## 📋 Mô tả dự án

Shopping Phone là một website thương mại điện tử chuyên bán điện thoại di động được phát triển bằng Java Web (JSP/Servlet). Dự án cung cấp đầy đủ các tính năng của một trang web bán hàng trực tuyến hiện đại.

## ✨ Tính năng chính

### 👥 Người dùng (Customer)
- 🔐 Đăng ký/Đăng nhập tài khoản
- 🔍 Tìm kiếm sản phẩm theo tên, danh mục
- 📱 Xem chi tiết sản phẩm
- 🛒 Thêm sản phẩm vào giỏ hàng
- 💳 Thanh toán đơn hàng
- 📋 Quản lý thông tin cá nhân

### 👨‍💼 Quản trị viên (Admin)
- 📊 Quản lý danh mục sản phẩm
- 📱 Quản lý sản phẩm (CRUD)
- 👥 Quản lý tài khoản người dùng
- 📈 Xem thống kê bán hàng

### 🏪 Người bán (Seller)
- 📦 Quản lý sản phẩm của mình
- 📊 Xem thống kê bán hàng cá nhân

## 🛠️ Công nghệ sử dụng

- **Backend**: Java Servlet, JSP
- **Frontend**: HTML, CSS, JavaScript
- **Database**: Microsoft SQL Server
- **Server**: Apache Tomcat
- **IDE**: NetBeans
- **Build Tool**: Apache Ant

## 📁 Cấu trúc dự án

```
Shopping-Phone/
├── src/java/
│   ├── Controller/          # Servlet controllers
│   ├── DBUtils/            # Database utilities
│   └── Models/             # Data models
├── web/
│   ├── View/               # JSP pages
│   ├── css/                # Stylesheets
│   ├── js/                 # JavaScript files
│   └── WEB-INF/           # Web configuration
├── build.xml               # Ant build file
└── script.sql             # Database schema
```

## 🗄️ Cấu trúc Database

### Bảng chính:
- **Account**: Quản lý tài khoản người dùng (uID, user, pass, roleID)
- **technology**: Thông tin sản phẩm điện thoại (id, name, image, price, title, description, cateID, sellID)
- **category**: Danh mục sản phẩm (iPhone, Samsung, Huawei, Xiaomi, Oppo)
- **Role**: Phân quyền người dùng (Admin, User, notSell)
- **sell**: Thông tin người bán
- **connectAcc**: Liên kết tài khoản với người bán

### Dữ liệu mẫu:
- **Categories**: iPhone, Samsung, Huawei, Xiaomi, Oppo
- **Sample Products**: iPhone 11, iPhone 13, Samsung Galaxy S24 Ultra, Galaxy Z Fold3, Huawei Nova, Xiaomi Redmi Note 12R Pro

## 🚀 Hướng dẫn cài đặt

### Yêu cầu hệ thống:
- ☕ Java JDK 8+
- 🖥️ NetBeans IDE 12+
- 🐱 Apache Tomcat 9+
- 🗃️ Microsoft SQL Server

### Các bước cài đặt:

1. **Clone project**
   ```bash
   git clone https://github.com/username/Shopping-Phone.git
   ```

2. **Cài đặt Database**
   - Tạo database `Assignment_PRJ301`
   - Chạy file `script.sql` để tạo tables và dữ liệu mẫu

3. **Cấu hình kết nối Database**
   - Cập nhật thông tin kết nối trong `DBContext.java`
   - Kiểm tra server name, username, password

4. **Cấu hình Google OAuth (tuỳ chọn)**
   - Copy file `src/java/DBUtils/Constants.java.example` thành `Constants.java`
   - Thay thế `YOUR_GOOGLE_CLIENT_ID` và `YOUR_GOOGLE_CLIENT_SECRET` bằng thông tin thực tế
   - Lấy credentials từ [Google Cloud Console](https://console.cloud.google.com/)

5. **Mở project trong NetBeans**
   - File → Open Project   - Chọn thư mục `Shopping-Phone`

6. **Cấu hình Tomcat Server**
   - Tools → Servers → Add Server
   - Chọn Apache Tomcat và đường dẫn cài đặt

7. **Build và Run**
   - Right-click project → Clean and Build
   - Right-click project → Run

## 🌐 Demo

Sau khi chạy thành công, truy cập:
- **Trang chủ**: `http://localhost:8080/Shopping-Phone/`
- **Đăng nhập**: `http://localhost:8080/Shopping-Phone/Login.jsp`

### Tài khoản demo:
- **Admin**: username: `admin`, password: `admin`
- **User**: username: `sa`, password: `sa`
- **User**: username: `sb`, password: `sb`

## 📱 Danh mục sản phẩm

- **iPhone**: iPhone 11, iPhone 13
- **Samsung**: Galaxy S24 Ultra, Galaxy Z Fold3
- **Huawei**: Nova series
- **Xiaomi**: Redmi Note 12R Pro, Redmi 13C
- **Oppo**: Các dòng sản phẩm mới nhất

## 🔧 Cấu hình

### Database Connection String:
```sql
Server: localhost
Database: Assignment_PRJ301
Authentication: SQL Server Authentication
```

### Ant Build Configuration:
```xml
<!-- Xem file build.xml để biết chi tiết -->
```

## 🤝 Đóng góp

1. Fork dự án
2. Tạo feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Tạo Pull Request

## 📝 License

Dự án này được phát hành dưới giấy phép [MIT License](LICENSE).

## 👨‍💻 Tác giả

- **Shopping Phone Team** - *Developer* - Dự án Assignment PRJ301

## 📞 Liên hệ

- 📧 Email: support@shoppingphone.com
- 🌐 Website: [Shopping Phone](https://shoppingphone.com)

## 🙏 Lời cảm ơn

- Cảm ơn các thầy cô đã hướng dẫn
- Cảm ơn cộng đồng Java Servlet/JSP
- Cảm ơn tất cả contributors

---

⭐ **Nếu dự án hữu ích, hãy cho một star để ủng hộ!** ⭐
