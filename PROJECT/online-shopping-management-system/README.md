# Online Shopping Management System

## Project Overview

The **Online Shopping Management System** is a database project developed using MySQL. It stores and manages customer details, product categories, product information, customer orders, order items, and payment details.

The project demonstrates database design and SQL operations, including table creation, constraints, data manipulation, joins, aggregate functions, views, subqueries, indexes, and transactions.

## Objectives

* Store and manage customer information.
* Organize products into categories.
* Maintain product prices and stock quantities.
* Record customer orders and their items.
* Store payment details and payment status.
* Retrieve useful information using SQL queries.
* Maintain data consistency using primary keys and foreign keys.

## Technologies Used

* **Database:** MySQL
* **Language:** SQL
* **Recommended tool:** MySQL Workbench

## Database Tables

| Table        | Purpose                                    |
| ------------ | ------------------------------------------ |
| `CUSTOMER`   | Stores customer details                    |
| `CATEGORY`   | Stores product categories                  |
| `PRODUCT`    | Stores product details, prices, and stock  |
| `ORDERS`     | Stores customer order information          |
| `ORDER_ITEM` | Stores the products included in each order |
| `PAYMENT`    | Stores payment information for orders      |

## Relationships

* One customer can place multiple orders.
* One category can contain multiple products.
* One order can contain multiple order items.
* One product can appear in multiple order items.
* Each order can have at most one payment record in this project.

## Project Files

1. `schema.sql` – Creates the database and tables.
2. `data.sql` – Inserts sample records.
3. `basic-queries.sql` – Demonstrates basic SQL operations.
4. `joins-and-aggregates.sql` – Demonstrates joins and aggregate functions.
5. `views-and-subqueries.sql` – Demonstrates views and subqueries.
6. `indexes-and-transactions.sql` – Demonstrates indexes, query analysis, and transactions.

## How to Run the Project

1. Open MySQL Workbench and connect to your MySQL server.
2. Open and execute `schema.sql`.
3. Open and execute `data.sql`.
4. Execute the remaining SQL files one at a time.
5. Review the results displayed by each query.

## Key SQL Concepts Demonstrated

* DDL: `CREATE`, `ALTER`, `DROP`
* DML: `INSERT`, `UPDATE`, `DELETE`
* DQL: `SELECT`
* Constraints: `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`
* Filtering and sorting
* Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
* `GROUP BY` and `HAVING`
* `INNER JOIN` and `LEFT JOIN`
* Views and subqueries
* Indexes and `EXPLAIN`
* Transactions using `START TRANSACTION`, `COMMIT`, and `ROLLBACK`

## Note

This project uses sample data for learning and demonstration. The order total is stored in `ORDERS.Total_Amount`, while individual item prices and quantities are stored in `ORDER_ITEM`.
