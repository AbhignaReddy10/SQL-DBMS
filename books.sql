use office;
CREATE TABLE publisher (
    PID INT PRIMARY KEY,
    PNAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    STATE VARCHAR(30),
    PHONE VARCHAR(15),
    EMAILID VARCHAR(50)
);
INSERT INTO  publisher VALUES
(1, 'Pearson', 'MG Road', 'Telangana', '9876543210', 'contact@pearson.com');

INSERT INTO  publisher VALUES
(2, 'McGrawHill', 'Anna Salai', 'Tamil Nadu', '9123456780', 'info@mcgrawhill.com');
insert into publisher values
(3, 'frank ocean' ,'delhi', 'New delhi' , '9898765463','frank@gmail.com');

CREATE TABLE BOOK (
    ISBN VARCHAR(20) PRIMARY KEY,
    BOOK_TITLE VARCHAR(100),
    CATEGORY VARCHAR(30),
    PRICE DECIMAL(8,2),
    COPYRIGHT_DATE DATE,
    YEAR INT,
    PAGE_COUNT INT,
    PID INT,
    FOREIGN KEY (PID) REFERENCES PUBLISHER(PID)
);

INSERT INTO BOOK VALUES
('ISBN101', 'Database Systems', 'Education', 550.00, DATE '2020-05-12', 2020, 450, 1);

INSERT INTO BOOK VALUES
('ISBN102', 'Operating Systems', 'Education', 620.00, DATE '2019-07-10', 2019, 500, 2);
insert into book values
('ISBN103' , 'Java programming', 'Education', 560.00, DATE '2018-08-12', 2018,450,3);

CREATE TABLE author (
    aid int PRIMARY KEY,
    aname VARCHAR(50),
    state VARCHAR(30),
    city VARCHAR(30),
    zip VARCHAR(10),
    phone VARCHAR(15),
    url VARCHAR(100)
);


INSERT INTO author VALUES
(1, 'CHETAN BHAGAT', 'Maharashtra', 'Pune', '411001', '9000000001', 'www.chetanbhagat.com');

INSERT INTO author VALUES
(2, 'Korth', 'Maharashtra', 'Mumbai', '400001', '9000000002', 'www.korth.com');

INSERT INTO author VALUES
(3, 'Charles', 'Maharashtra', 'Pune', '411002', '9000000003', 'www.charles.com');

CREATE TABLE author_book (
    aid int,
    isbn VARCHAR(20),
    PRIMARY KEY (aid, isbn),
    FOREIGN KEY (aid) REFERENCES author(aid),
    FOREIGN KEY (isbn) REFERENCES book(isbn)
);
INSERT INTO author_book VALUES (1, 'ISBN101');
INSERT INTO author_book VALUES (2, 'ISBN102');
INSERT INTO author_book VALUES (3, 'ISBN101');

CREATE TABLE review (
    rid int PRIMARY KEY,
    isbn VARCHAR(20),
    rating int CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (isbn) REFERENCES book(isbn)
);
INSERT INTO review VALUES (1, 'ISBN101', 5);
INSERT INTO review VALUES (2, 'ISBN102', 4);
INSERT INTO review Values (3,'ISBN103',4);



