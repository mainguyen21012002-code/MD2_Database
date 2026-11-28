INSERT INTO students (fullname, birth_day, gender, email)
VALUES 
    ('Nguyen Van Ba', '2006-03-15', 'Male', 'Ba.nv@example.com'),
    ('Nguyen Thi Xuan', '2003-03-15', 'Female', 'Xuan.nv@example.com');



SELECT * FROM students WHERE email IS NULL;
SELECT * FROM students WHERE email IS NOT NULL;
SELECT * FROM students WHERE fullname LIKE 'Ng%';
SELECT * FROM students WHERE NOT gender = 'Female';