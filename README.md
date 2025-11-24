# Ecommerce SQL Data Analysis

This project demonstrates practical SQL data analysis using a sample ecommerce database. It covers data extraction, joins, aggregations, subqueries, views, and basic optimization. The goal is to show clear querying and analytical skills on a structured dataset.

## Files

- `ecommerce_db.sql`  
  Creates the database schema and inserts sample data.

- `ecommerce_analysis.sql`  
  Contains all analysis queries: SELECT, JOIN, GROUP BY, subqueries, views, and indexes.

- `/screenshots/`  
  Output screenshots from MySQL Workbench or phpMyAdmin.

## Dataset Overview

Tables included:

- `customers`  
- `products`  
- `orders`  
- `order_items`

The structure supports realistic ecommerce relationships: customers place orders, orders contain items, and products track pricing and categories.

## Features

The analysis file includes:

- Filtering and sorting
- INNER, LEFT, and RIGHT JOINs
- Revenue calculations
- Customer spending analysis
- Product performance analysis
- Subquery to find highest spender
- View creation for summary reporting
- Indexing to improve query performance

## How to Run

1. Create a database in MySQL (or PostgreSQL / SQLite)
2. Import `ecommerce_db.sql`
3. Run `ecommerce_analysis.sql`
4. View results in your SQL client

## Example Insights

- Total revenue per product
- Total spend per customer
- Customers with no orders
- Products never ordered

## Tools Used

- MySQL (recommended)
- MySQL Workbench / phpMyAdmin

## Outcome

This project shows the ability to build and analyze a relational dataset using SQL and demonstrates core analytical querying skills.

