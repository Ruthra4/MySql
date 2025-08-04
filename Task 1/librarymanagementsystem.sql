
CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address TEXT
);

INSERT INTO Members (name, email, phone, address)
VALUES 
('Ravi Kumar', 'ravi@gmail.com', '9876543210', 'Chennai'),
('Meena Rani', 'meena@gmail.com', '9123456789', 'Madurai');

SELECT * FROM Members;

UPDATE Members
SET email = 'newemail@example.com'
WHERE member_id = 1;

SELECT * FROM Members;

DELETE FROM Members
WHERE member_id = 2;

SELECT * FROM Members;


CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_published YEAR,
    isbn VARCHAR(20) UNIQUE
);

INSERT INTO Books (title, author, publisher, year_published, isbn)
VALUES 
('Database Systems', 'Raghu Ramakrishnan', 'McGraw-Hill', 2021, '9780072465631'),
('Learn SQL', 'John Smith', 'O\'Reilly', 2019, '9781492057611');

SELECT * FROM Books;

UPDATE Books
SET publisher = 'Penguin Random House'
WHERE book_id = 2;

SELECT * FROM Books;

DELETE FROM Books
WHERE title = 'Learn SQL';

SELECT * FROM Books;

CREATE TABLE Reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    book_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

INSERT INTO Reviews (member_id, book_id, rating, review_text, review_date)
VALUES
(1, 1, 5, 'Great explanation of relational models.', '2025-08-04'),
(2, 2, 4, 'Useful for SQL beginners.', '2025-08-03');

SELECT * FROM Reviews;


TRUNCATE TABLE Reviews;
