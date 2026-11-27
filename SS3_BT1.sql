
USE ss2_sql;

CREATE TABLE classes (
    classID INT PRIMARY KEY AUTO_INCREMENT,
    className VARCHAR(30) NOT NULL,
    class_year INT NOT NULL
);

CREATE TABLE students (
    studentID INT PRIMARY KEY AUTO_INCREMENT,
    student_Name VARCHAR(50) NOT NULL,
    student_dob DATE,
    gender VARCHAR(10),
    classid INT NOT NULL,
    FOREIGN KEY (classid) REFERENCES classes(classID)
);
