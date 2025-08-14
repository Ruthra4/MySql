# Task 7 — Creating and Using SQL Views

## Objective
This task demonstrates how to **create, query, and manage SQL views** for data abstraction, security, and simplified reporting.  
It includes simple projection views, filtered views, joined views, aggregated views, scalar-subquery views, and updatable views.

---

## Tools
- MySQL Workbench (MySQL 8+)
- SQL scripts: `schema.sql`, `data.sql`, `views.sql`
- Screenshot tool for capturing results

---

## Database Schema
**Tables:**
- `Customers` — Customer details
- `Orders` — Orders linked to customers
- `Products` — Product catalog
- `OrderItems` — Items in each order

**Relationships:**
- `Customers.customer_id` → `Orders.customer_id`
- `Orders.order_id` → `OrderItems.order_id`
- `Products.product_id` → `OrderItems.product_id`

 ER diagram available in `/ER/er_diagram.png`

---

## Repository Structure


---

## Steps to Run
1. **Create tables**  
   Run `schema.sql` in MySQL Workbench.
2. **Insert data**  
   Run `data.sql`.
3. **Create views**  
   Run `views.sql` step-by-step to build:
   - Projection views  
   - Filtered views  
   - Joined views  
   - Aggregate views  
   - Scalar subquery views  
   - Updatable views with `WITH CHECK OPTION`
4. **Test views**  
   Execute `SELECT * FROM view_name;` for each view.
5. **Capture outputs**  
   Save screenshots to `/screenshots/` as `V01.png`, `V02.png`, etc.

---

## Views Implemented
- `v_customers_public` — Public-safe customer list (no emails)
- `v_delivered_orders` — Only delivered orders
- `v_order_details` — Orders with product and customer details
- `v_customer_spend` — Total spend and order count per customer
- `v_customer_last_order` — Last order date per customer
- `v_processing_orders` — Updatable view for `processing` orders
- `v_orders_metrics` — Order stats without PII

---

## Key Learnings
- Views simplify complex queries and improve code reusability.
- `WITH CHECK OPTION` ensures inserts/updates respect the view’s WHERE condition (MySQL only).
- Aggregate views can act like summary tables.
- Use views for security by hiding sensitive columns.

---

## Example Query
```sql
-- Total spend per customer from a view
SELECT * 
FROM v_customer_spend
ORDER BY total_spent DESC;

