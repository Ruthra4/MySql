CREATE SCHEMA productmanagement;

use productmanagement;

-- Create the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

-- Insert sample data
INSERT INTO products (product_name, category, price, stock) VALUES
('Laptop', 'Electronics', 75000.00, 10),
('Smartphone', 'Electronics', 25000.00, 25),
('Desk Chair', 'Furniture', 4000.00, 15),
('Dining Table', 'Furniture', 12000.00, 5),
('Pen Drive', 'Accessories', 600.00, 50),
('Notebook', 'Stationery', 40.00, 200),
('Monitor', 'Electronics', 15000.00, 8),
('Bookshelf', 'Furniture', 7000.00, 4);


SELECT * FROM products;


SELECT product_name, price FROM products;


SELECT * FROM products WHERE price > 10000;


SELECT * FROM products
WHERE category = 'Electronics' AND stock > 10;


SELECT * FROM products
WHERE product_name LIKE '%Desk%';


SELECT * FROM products
WHERE price BETWEEN 5000 AND 20000;


SELECT * FROM products
ORDER BY stock DESC;


SELECT * FROM products
ORDER BY price DESC
LIMIT 3;


SELECT product_name AS name, price AS cost
FROM products;


SELECT DISTINCT category FROM products;


SELECT * FROM products
WHERE category IN ('Furniture', 'Stationery');
