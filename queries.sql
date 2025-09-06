
//Top 5 best-selling products

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 5;

//Total revenue by month

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS revenue
FROM Orders o
JOIN Payments p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

//Top 5 customers by spending

SELECT u.name, SUM(p.amount) AS total_spent
FROM Users u
JOIN Orders o ON u.user_id = o.user_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY u.name
ORDER BY total_spent DESC
LIMIT 5;

//Product with best average rating

SELECT p.name, ROUND(AVG(r.rating),2) AS avg_rating
FROM Reviews r
JOIN Products p ON r.product_id = p.product_id
GROUP BY p.name
ORDER BY avg_rating DESC
LIMIT 1;

///Average delivery time (in days)

SELECT AVG(DATEDIFF(delivery_date, shipment_date)) AS avg_delivery_days
FROM Shipments;


Resume Highlight

You can write:

"Developed an E-Commerce SQL database with 7+ tables (Users, Products, Orders, Payments, Shipments, Reviews). Wrote complex SQL queries to analyze sales, customer lifetime value, product performance, and delivery efficiency. Optimized queries using joins, subqueries, and window functions for faster insights."

E-Commerce Analytics SQL Project

## 📌 Overview
This project simulates an e-commerce platform (like Amazon/Flipkart) using SQL.
It includes tables for Users, Products, Orders, Payments, Shipments, and Reviews.

## 📂 Files
- `schema.sql` → Database schema (tables and relationships)
- `data.sql` → Sample data (insert statements)
- `queries.sql` → Business analytics queries

## 🔍 Key Queries
- Top 5 best-selling products
- Monthly revenue trends
- Top customers by spending
- Product with best ratings
- Average delivery time

## ⚡ Tech Stack
- MySQL / PostgreSQL
- SQL (Joins, Aggregates, Window Functions)

## 📈 Resume Highlight
*Developed a complete SQL database for an e-commerce platform and wrote advanced queries for customer analytics, sales trends, and performance insights.*