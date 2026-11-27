CREATE DATABASE IF NOT EXISTS ss3_bt2;
USE ss3_bt2;

-- Xóa bảng cũ nếu chạy lại (xóa bảng trung gian trước)
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS orders;

-- 1. Tạo bảng Đơn hàng (orders)
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL
);

-- 2. Tạo bảng Sản phẩm (products)
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- 3. Tạo bảng trung gian (order_items) với Khóa chính kép & 2 Khóa ngoại
CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);