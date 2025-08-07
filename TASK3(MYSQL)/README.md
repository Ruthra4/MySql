# 📘 Task 3 – productmanagement

## 📝 Objective
To retrieve and filter product data using SQL SELECT queries. This task focuses on using WHERE, LIKE, BETWEEN, ORDER BY, LIMIT, and aliases.

---

## ⚙️ Tools Used
- MySQL Workbench / DB Browser for SQLite

---

## 🗃️ Table Schema – `products`
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
