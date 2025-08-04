# Library Management System (SQL Schema Design)

## Objective
Design and implement a simple Library Management System using MySQL with focus on table creation, data types, primary/foreign keys, and relationships. This version excludes the Loans table and focuses on Members, Books, and Reviews.

---

##  Tables Created

### Members
Stores information about library members.

| Column Name | Data Type   | Description            |
|-------------|-------------|------------------------|
| member_id   | INT (PK)    | Auto-incremented ID    |
| name        | VARCHAR     | Member's full name     |
| email       | VARCHAR     | Unique email address   |
| phone       | VARCHAR     | Contact number         |
| address     | TEXT        | Residential address    |

---

### Books
Stores information about books in the library.

| Column Name     | Data Type   | Description              |
|------------------|-------------|--------------------------|
| book_id          | INT (PK)    | Auto-incremented ID      |
| title            | VARCHAR     | Title of the book        |
| author           | VARCHAR     | Author of the book       |
| publisher        | VARCHAR     | Publisher name           |
| year_published   | YEAR        | Year of publication      |
| isbn             | VARCHAR     | Unique ISBN number       |

---

### Reviews
Tracks user reviews and ratings of books.

| Column Name  | Data Type   | Description                         |
|--------------|-------------|-------------------------------------|
| review_id    | INT (PK)    | Auto-incremented ID                 |
| member_id    | INT (FK)    | References Members(member_id)      |
| book_id      | INT (FK)    | References Books(book_id)          |
| rating       | INT         | Rating between 1 and 5              |
| review_text  | TEXT        | Optional textual review             |
| review_date  | DATE        | Date review was submitted manually  |

---

##  Relationships

- Each member can review multiple books.
- Each book can have multiple reviews.

(No loans or book borrowing functionality is implemented in this version.)

---

##  How to Run

### 1. Install MySQL
Download and install from: https://dev.mysql.com/downloads/installer/

### 2. Open MySQL Workbench
- Connect to `Local Instance MySQL`
- Create a new database using:
```sql
CREATE DATABASE LibraryDB;
USE LibraryDB;

library-management-sql/
│
├── schema.sql        # Full SQL DDL commands
├── ER-diagram.png    # ER diagram of the schema
└── README.md         # This file
