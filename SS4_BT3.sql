INSERT INTO students (fullname, birth_day, gender, email)
VALUES 
    ('Pham Quoc Thang', '2005-01-30', 'Male', null);
SELECT birth_day,fullname FROM students WHERE YEAR(birth_day) BETWEEN 2003 and 2005;
SELECT fullname,gender FROM students WHERE gender IN('Female','Male');
SELECT *FROM students WHERE studentID IN (7, 9, 10);
SELECT studentID, fullname, birth_day FROM students;