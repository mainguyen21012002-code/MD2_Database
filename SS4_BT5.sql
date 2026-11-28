CREATE DATABASE IF NOT EXISTS ss4_BT5;
USE ss4_BT5;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50) NOT NULL, 
    birth_year INT NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) NOT NULL,
    phone VARCHAR(20) NULL
);

INSERT INTO employees (full_name, birth_year, department, salary, phone)
VALUES 
    ('Nguyễn Hoàng Anh', 1995, 'IT', 18000000, '0905123456'),
    ('Trần Thị Bình', 1998, 'Marketing', 14500000, NULL),
    ('Lê Hoàng Cường', 1992, 'Kế toán', 16000000, '0987654321'),
    ('Phạm Minh Dung', 2000, 'HR', 12000000, '0935112233'),
    ('Hoàng Quốc Em', 1996, 'Kinh doanh', 15500000, NULL),
    ('Vũ Thị Phương', 1994, 'IT', 21000000, '0901223344'),
    ('Đặng Minh Giang', 1999, 'Kinh doanh', 13500000, '0918776655'),
    ('Bùi Thanh Hải', 1991, 'Kế toán', 19500000, NULL),
    ('Ngô Lan Anh', 1997, 'Marketing', 15000000, '0983554433'),
    ('Đỗ Tuấn Kiệt', 2001, 'HR', 11500000, '0976119988'),
    ('Lý Gia Linh', 1996, 'IT', 19000000, NULL),
    ('Trịnh Quang Minh', 1993, 'Kinh doanh', 17500000, '0914556677'),
    ('Đinh Thị Nga', 1998, 'Kế toán', 14000000, '0938221144'),
    ('Phan Đức Phúc', 1990, 'IT', 24000000, '0981332255'),
    ('Võ Ngọc Quyên', 1999, 'Marketing', 13000000, NULL),
    ('Dương Văn Sơn', 1995, 'Kinh doanh', 16500000, '0903447788'),
    ('Hồ Thị Thảo', 2002, 'HR', 4500000, '0916990011'),
    ('Tạ Minh Tuấn', 1994, 'IT', 20500000, NULL),
    ('Chu Bảo Uyên', 1997, 'Kế toán', 15500000, '0985774411'),
    ('Mai Hoàng Vũ', 1993, 'Marketing', 4800000, '0974336699');

-- 1. Truy vấn dữ liệu (SELECT)
SELECT * FROM employees WHERE salary BETWEEN 10000000 AND 20000000;
SELECT * FROM employees WHERE department IN ('IT', 'HR');
SELECT * FROM employees WHERE full_name LIKE '%Anh%';
SELECT * FROM employees WHERE phone IS NULL;

-- 2. Cập nhật & xóa dữ liệu (UPDATE - DELETE)
SET SQL_SAFE_UPDATES = 0;
UPDATE employees
SET salary = salary + salary * 0.1
WHERE department = 'IT';

UPDATE employees
SET phone = '0900000000'
WHERE phone IS NULL;

DELETE FROM employees WHERE salary < 5000000;









