CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

INSERT INTO Customers (name, email, phone) VALUES
('Vijay', 'vijay@example.com', '9876543210'),
('Arjun Reddy', 'arjun@example.com', '9123456780'),
('Meera Nair', 'meera@example.com', '9988776655');

UPDATE Customers SET phone = '9876543211' WHERE customer_id = 1;

DELETE FROM Customers WHERE customer_id = 3;

SELECT * FROM Customers;


CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10,2)
);
INSERT INTO Products (name, description, price) VALUES
('Laptop', '15-inch gaming laptop', 75000.00),
('Headphones', 'Noise-cancelling headphones', 3000.00),
('Smartphone', 'Latest Android model', 25000.00);

UPDATE Products SET price = 3200.00 WHERE product_id = 2;

DELETE FROM Products WHERE product_id = 2;

SELECT * FROM Products;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2025-08-01'),
(2, '2025-08-02');

UPDATE Orders SET order_date = '2025-08-03' WHERE order_id = 1;

DELETE FROM Order_Items WHERE order_id = 1;
DELETE FROM Payments WHERE order_id = 1;
DELETE FROM Orders WHERE order_id = 1;

SELECT * FROM Orders;

CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Order_Items (order_id, product_id, quantity) VALUES
(1, 1, 1),  -- Laptop
(1, 2, 1),  -- Headphones
(2, 3, 2);  -- 2 Smartphones

UPDATE Order_Items SET quantity = 3 WHERE order_id = 2 AND product_id = 3;

DELETE FROM Order_Items WHERE order_id = 1 AND product_id = 2;

SELECT * FROM Order_Items;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
INSERT INTO Payments (order_id, amount) VALUES
(1, 78000.00),
(2, 50000.00);

UPDATE Payments SET amount = 79000.00 WHERE payment_id = 1;

DELETE FROM Payments WHERE payment_id = 1;

select * from payments;