# E-commerce Database System

## 📌 Overview
This project simulates an e-commerce database system including users, products, orders, and payments.

## 🧱 Features
- Design relational database (Users, Products, Orders, OrderItems)
- Stored Procedure with transaction handling
- Trigger automation
- Query analysis (Top customers, best-selling products)

## 🚀 Technologies
- SQL Server

## ▶️ How to run
1. Run create_tables.sql
2. Run insert_data.sql
3. Run procedures.sql
4. Run trigger.sql
5. Run query.sql

---

## 📊 Example Queries

### Top customers by spending
```sql
SELECT u.name, SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.name;
