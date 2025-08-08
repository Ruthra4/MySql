CREATE DATABASE SalesDB;
USE SalesDB;

CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    product_category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE
);


INSERT INTO Orders (customer_name, product_category, quantity, price, order_date) VALUES
('Ruthra', 'Electronics', 2, 15000, '2023-05-15'),
('Anjali', 'Clothing', 5, 2000, '2023-05-20'),
('Ravi', 'Electronics', 1, 12000, '2023-06-10'),
('Priya', 'Furniture', 1, 25000, '2023-06-15'),
('Karan', 'Clothing', 3, 1800, '2023-07-01'),
('Neha', 'Electronics', 4, 14000, '2023-07-05'),
('Amit', 'Furniture', 2, 27000, '2023-07-10');


SELECT SUM(quantity * price) AS total_sales FROM Orders;


SELECT AVG(quantity * price) AS avg_order_value FROM Orders;

SELECT product_category, COUNT(*) AS total_orders FROM Orders GROUP BY product_category;

SELECT product_category, SUM(quantity * price) AS total_sales FROM Orders GROUP BY product_category;

SELECT product_category, SUM(quantity * price) AS total_sales 
FROM Orders GROUP BY product_category
HAVING SUM(quantity * price) > 30000;

SELECT MONTH(order_date) AS month, SUM(quantity * price) AS monthly_sales
FROM Orders
GROUP BY MONTH(order_date);


SELECT COUNT(DISTINCT customer_name) AS unique_customers
FROM Orders;
