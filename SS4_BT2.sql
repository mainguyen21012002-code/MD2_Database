UPDATE students
SET email = 'hung@gmail.com'
WHERE studentID = 7;
UPDATE students
SET email = 'mai@gmail.com'
WHERE studentID = 10;
SELECT studentID,email FROM students;
UPDATE students
SET gender = 'Male'
WHERE studentID = 8;
SELECT studentID,fullname,gender FROM students;
DELETE FROM students WHERE studentID = 6;
SELECT * FROM students;

