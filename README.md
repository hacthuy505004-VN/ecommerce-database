## E-commerce Database System

## Overview
Dự án này mô phỏng một hệ thống cơ sở dữ liệu thương mại điện tử bao gồm người dùng, sản phẩm, đơn đặt hàng và thanh toán.

## Features
- Thiết kế cơ sở dữ liệu quan hệ (Users, Products, Orders, OrderItems)
- Sử dụng Stored Procedure với xử lý Transaction
- Trigger tự động hóa
- Tối ưu hiệu năng bằng Index
- Truy vấn phân tích (khách hàng, sản phẩm)

## Technologies
- SQL Server

## How to run
1. Run create_tables.sql
2. Run insert_data.sql
3. Run procedures.sql
4. Run trigger.sql
5. Run query.sql

---

## Example Queries

## Top customers by spending
```sql
SELECT u.name, SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.name;
