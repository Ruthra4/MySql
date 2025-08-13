# Task 6 — Subqueries & Nested Queries

## Objective
Practice using **scalar**, **correlated**, and **nested subqueries** in `SELECT`, `WHERE`, and `FROM` clauses, along with `IN`, `EXISTS`, and derived tables, to enhance advanced SQL query skills.

---

## Tools
- MySQL Workbench / DB Browser for SQLite  
- SQL scripts: `schema.sql`, `data.sql`, `queries.sql`  
- Screenshot tool for outputs

---


---

## Steps
1. Create tables → `schema.sql`  
2. Insert data → `data.sql`  
3. Run each query from `queries.sql`  
4. Save outputs as `/screenshots/Qxx.png`  
5. Embed results in final report or presentation

---

## Subqueries Covered
- Scalar subqueries (SELECT)  
- Correlated subqueries (WHERE)  
- Multi-row subqueries with `IN`  
- `EXISTS` / `NOT EXISTS`  
- Derived tables (FROM)  
- Nested subqueries  
- `ANY` / `ALL` comparisons  
- Subquery vs JOIN performance  

---

## Key Points
- **Scalar subqueries** return one value, useful for computed columns  
- **Correlated subqueries** run per row and may impact performance  
- Use `NOT EXISTS` instead of `NOT IN` when NULLs are possible  
- Derived tables can simplify complex queries  
- Joins can sometimes replace subqueries for better speed


