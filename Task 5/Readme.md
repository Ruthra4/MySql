# Task 5 — SQL Joins (Inner, Left, Right, Full, Cross, Natural, Self, Nested)

## Objective
This task demonstrates different types of **SQL Joins** using a simple e-commerce database model with `Customers`, `Orders`, `Products`, and `OrderItems` tables.  
The goal is to understand how each join works, observe their outputs, and answer relevant interview questions.

---

## Database Schema
**Tables:**
- **Customers** — Stores customer details and a `referrer_id` for self-joins.
- **Orders** — Stores order details linked to customers.
- **Products** — Stores product information.
- **OrderItems** — Stores details of products in each order.

**Relationships:**
- `Customers.customer_id` → `Orders.customer_id`
- `Orders.order_id` → `OrderItems.order_id`
- `Products.product_id` → `OrderItems.product_id`
- `Customers.referrer_id` → `Customers.customer_id` (self-reference)

 **ER Diagram** is available in the `/ER` folder.

---

## How to Run
1. **Set up the database**  
   - Open MySQL Workbench (or DB Browser for SQLite).  
   - Run `schema.sql` to create tables.  
   - Run `data.sql` to insert sample data.

2. **Run queries**  
   - Open `queries.sql` and execute each join query in sequence.  
   - Observe the results and compare how each join behaves.

3. **Check outputs**  
   - Screenshots of results are stored in `/screenshots`.  
   - Presentation slides are in `presentation.pdf`.

---

## SQL Joins Covered
1. **INNER JOIN** – Returns matching rows from both tables.
2. **LEFT JOIN** – All rows from left table, with matches from right table.
3. **RIGHT JOIN** – All rows from right table, with matches from left table.
4. **FULL OUTER JOIN** – All rows from both tables (simulated with `UNION` in MySQL).
5. **CROSS JOIN** – Cartesian product of rows.
6. **NATURAL JOIN** – Joins on columns with same name automatically.
7. **SELF JOIN** – Table joined to itself (used for `referrer_id` relationship).
8. **Nested Joins** – Multiple joins in a single query to combine several tables.

