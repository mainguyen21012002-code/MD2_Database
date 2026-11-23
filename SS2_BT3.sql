USE ss2_SQL;
CREATE TABLE students_constraint (
    id INT PRIMARY KEY,
    fullName VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT NOT NULL CHECK (age >= 18)
);