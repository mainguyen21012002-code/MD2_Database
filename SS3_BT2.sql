USE ss2_sql;
DROP TABLE IF EXISTS borrowings;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS readers;
create table readers (
	readersID int primary key AUTO_INCREMENT, 
    readerName varchar(20) not null,
    Phone VARCHAR(15) not null,
    address varchar(100) not null
);
 create table books (
	bookID int primary key AUTO_INCREMENT,
    bookName varchar(30) not null,
    author varchar(50) not null,
    category varchar(50) not null,
    quantity int not null
 );
 
 create table borrowings (
	borrowingID int primary key AUTO_INCREMENT,
    borrowingDate date,
    returnDate date not null,
    status varchar(20) not null default 'đang mượn',
    readersID int not null,
    foreign key (readersID) REFERENCES readers(readersID),
    bookID int not null,
    foreign key (bookID) REFERENCES books(bookID)
 );

ALTER TABLE borrowings MODIFY borrowingDate date not null;
