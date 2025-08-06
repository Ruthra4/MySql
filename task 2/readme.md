#  E-commerce Database Management System (MySQL)

This project is a simple and structured **E-commerce Database Management System** developed using **MySQL**. It is designed to handle core functionalities of an online store, such as managing customers, products, orders, order items, and payments. This system supports full **CRUD operations** for each table, making it suitable for academic, learning, or prototyping purposes.

---

##  Features

- Customer Management (Add, View, Update, Delete)
- Product Catalog with Pricing
- Order Processing System
- Order Items linking Orders and Products
- Payment Records for Each Order
- Relational Database with Foreign Key Constraints
- Preloaded Sample Data for Testing

---

##  Database Tables

###  Customers
Stores customer details including name, email, and phone.

###  Products
Stores product catalog with name, description, and price.

###  Orders
Records each order placed by a customer along with the order date.

###  Order_Items
Links products to orders, including quantity of each product.

###  Payments
Stores payment information for each order with amount paid.

---

##  Supported CRUD Operations

Each table supports the following:

- **Create:** Insert new records
- **Read:** Retrieve records (all or by ID)
- **Update:** Modify existing records
- **Delete:** Remove records (considering foreign key constraints)

---

##  Sample Queries Included

- List all customers and their orders
- Get order item details with product names
- View total payment per order
- Update prices, customer details, or quantities
- Delete customers, products, or orders safely

---

##  Technologies Used

- **MySQL** (DDL, DML, Constraints, Foreign Keys)
- Structured Query Language (SQL)
- Relational Database Design Principles
