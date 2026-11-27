CREATE DATABASE IF NOT EXISTS ss3;
USE ss3;
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
    teacherID INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE students (
    studentID INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE courses (
    coursesID INT PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(100) NOT NULL,
    description VARCHAR(200) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    teacherID INT,
    FOREIGN KEY (teacherID) REFERENCES teachers(teacherID)
);

CREATE TABLE enrollments (
    enrollmentsID INT PRIMARY KEY AUTO_INCREMENT,
    studentsID INT,
    coursesID INT,
    FOREIGN KEY (studentsID) REFERENCES students(studentID),
    FOREIGN KEY (coursesID) REFERENCES courses(coursesID)
);
ALTER TABLE courses MODIFY price DECIMAL(10,2) NOT NULL CHECK (price>0);





