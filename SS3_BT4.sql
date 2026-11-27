CREATE DATABASE IF NOT EXISTS ss3_bt4;
USE ss3_bt4;
DROP TABLE IF EXISTS users;
create table users (
	userID int primary key auto_increment,
    userName varchar(50) not null unique,
    userPass varchar(50) not null ,
    userEmail varchar(50) not null unique,
    status varchar(100) not null default 'active'
);
ALTER TABLE users modify status varchar(100) not null default 'active' check (status in ('active', 'inactive', 'banned'))

