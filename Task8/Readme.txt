# Task 8 — Stored Procedures & Functions (MySQL)

## 📌 Objective
The goal of this task is to **create and use stored procedures and functions** in MySQL to:
- Encapsulate reusable query logic
- Accept parameters for dynamic execution
- Return computed results
- Implement conditional logic in SQL

---

## 🛠 Tools
- **MySQL Workbench 8.0+**
- SQL scripts: `schema.sql`, `data.sql`, `procedures_functions.sql`
- Screenshot tool for capturing outputs

---

## 🗂 Database Schema
**Tables:**
- `Customers` — Customer information
- `Products` — Product details and prices
- `Orders` — Customer orders
- `OrderItems` — Items within each order

**Relationships:**
- `Customers.customer_id` → `Orders.customer_id`
- `Orders.order_id` → `OrderItems.order_id`
- `Products.product_id` → `OrderItems.product_id`

📌 ER diagram available in `/ER/er_diagram.png`

---

## 📂 Repository Structure


---

## ⚙️ Steps to Run in MySQL Workbench
1. **Create tables**  
   Run `schema.sql` to set up `Customers`, `Products`, `Orders`, and `OrderItems`.
2. **Insert sample data**  
   Run `data.sql`.
3. **Create procedures and functions**  
   Run `procedures_functions.sql` to create:
   - `GetOrdersByCustomer` (procedure)
   - `TotalSpentByCustomer` (function)
   - `UpdateOrderStatus` (procedure with IN/OUT parameters)
4. **Test each procedure/function**  
   Execute the sample calls given in the script.
5. **Save outputs**  
   Screenshot query results and store in `/screenshots/`.

---


