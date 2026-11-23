USE ss2_SQL;
CREATE TABLE  Students_ss2 (
	Student_ID INT PRIMARY KEY,
	FullName VARCHAR(50) NOT NULL,
    Dob DATE NOT NULL,
    Gender VARCHAR(20) NOT NULL,
    classID INT NOT NULL,
    FOREIGN KEY (classID) REFERENCES Classes (Class_ID)
    );
    

USE ss2_SQL;
CREATE TABLE Classes (
	Class_ID INT PRIMARY KEY,
    ClassName VARCHAR(50) NOT NULL,
    Academic_year INT NOT NULL );