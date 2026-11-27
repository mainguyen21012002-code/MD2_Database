CREATE DATABASE ss2;
USE ss2;


CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Product_name VARCHAR(100) NOT NULL,
    Product_price DECIMAL(10,2) NOT NULL CHECK(product_price > 0)
);
CREATE TABLE Orders(
    orderID INT PRIMARY KEY  AUTO_INCREMENT,
    order_date DATE,
    order_status VARCHAR(50) NOT NULL
);
CREATE TABLE order_items (
    orderItems_ID INT PRIMARY KEY AUTO_INCREMENT,
    product_ID INT,
    FOREIGN KEY(product_ID) REFERENCES Products(ProductID),
    order_ID INT,
    FOREIGN KEY(order_ID) REFERENCES Orders(orderID)
);