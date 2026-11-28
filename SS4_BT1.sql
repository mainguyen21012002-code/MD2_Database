USE SS3;
ALTER TABLE students
ADD birth_day DATE;
ALTER TABLE students 
ADD gender varchar(20);
ALTER TABLE students
MODIFY email VARCHAR(50) NULL UNIQUE;

INSERT INTO students (fullname, birth_day, gender, email)
VALUES ('Nguyen Van An', '2004-03-15', 'Male', 'an.nv@example.com'),
    ('Tran Thi Bich', '2004-07-22', 'Female', NULL),
    ('Le Minh Chau', '2003-11-05', 'Female', 'chau.lm@example.com'),
    ('Pham Quoc Dat', '2004-01-30', 'Male', 'dat.pq@example.com'),
    ('Vo Hoang Em', '2004-09-12', 'Female', NULL),
    ('Nguyen Van Ba', '2006-03-15', 'Male', 'Ba.nv@example.com'),
    ('Nguyen Thi Xuan', '2003-03-15', 'Female', 'Xuan.nv@example.com');


SELECT * FROM students;
SELECT studentID, fullname, email FROM students;