# DBMS & SQL Learning

A beginner-friendly repository to learn **Database Management Systems (DBMS) and SQL** from fundamentals to advanced concepts.

This repository follows a **basic → intermediate → advanced** approach based on the DBMS syllabus.

The goal is to learn concepts clearly, practice SQL step by step, and build a strong foundation for real-world database development.

---

## 📚 Learning Path

```text
DBMS Fundamentals
       ↓
Relational Model
       ↓
Basic SQL
       ↓
Advanced SQL
       ↓
Normalization
       ↓
Transactions
       ↓
Indexing
       ↓
Query Optimization
       ↓
Database Performance & Recovery
```

---

## 📂 Repository Structure

```text
DBMS-SQL-Learning/
│
├── README.md
│
├── UNIT-1-DBMS-FUNDAMENTALS/
│   ├── 01-dbms-introduction.md
│   ├── 02-dbms-architecture.md
│   ├── 03-data-abstraction-and-schema.md
│   ├── 04-data-models.md
│   ├── 05-database-users-and-environment.md
│   └── 06-database-types-and-architectures.md
│
├── UNIT-2-RELATIONAL-MODEL-BASIC-SQL/
│   ├── 01-relational-model.md
│   ├── 02-data-types-and-table-definition.sql
│   ├── 03-constraints.sql
│   ├── 04-insert-data.sql
│   ├── 05-select-and-where.sql
│   ├── 06-operators.sql
│   ├── 07-update-and-delete.sql
│   ├── 08-sql-functions.sql
│   └── 09-group-by-and-having.sql
│
├── UNIT-3-ER-MODEL-ADVANCED-SQL/
│   ├── 01-er-model.md
│   ├── 02-relationships-and-constraints.sql
│   ├── 03-subqueries.sql
│   ├── 04-correlated-subqueries.sql
│   ├── 05-joins.sql
│   ├── 06-views.sql
│   └── 07-set-operations.sql
│
├── UNIT-4-NORMALIZATION-TRANSACTIONS/
│   ├── 01-normalization.md
│   ├── 02-functional-dependencies.md
│   ├── 03-normal-forms.md
│   ├── 04-decomposition.md
│   ├── 05-transactions.md
│   └── 06-recovery.md
│
├── UNIT-5-INDEXING-TUNING/
│   ├── 01-indexing.md
│   ├── 02-b-tree-and-b-plus-tree.md
│   ├── 03-hash-indexing.md
│   ├── 04-file-organization.md
│   ├── 05-query-optimization.md
│   └── 06-backup-and-recovery.md
│
PROJECT/
└── online-shopping-management-system/
    ├── README.md
    ├── schema.sql
    ├── data.sql
    ├── basic-queries.sql
    ├── joins-and-aggregates.sql
    ├── views-and-subqueries.sql
    └── indexes-and-transactions.sql
```

---

# 🗺️ Units

## Unit I — DBMS Fundamentals

Learn the foundation of database systems:

* Introduction to DBMS
* History and architecture
* Need and applications
* Data and metadata
* Data abstraction
* Three-schema architecture
* Database users and DBA
* Database system environment
* Data models
* Centralized and client-server architecture
* Parallel and distributed databases
* Spatial, temporal, multimedia and NoSQL databases

---

## Unit II — Relational Model & Basic SQL

Start writing SQL.

Topics include:

* Relational model
* Attributes, tuples, domains and relations
* Primary, candidate, alternate and foreign keys
* NULL values
* Relational algebra basics
* SQL data types
* `CREATE TABLE`
* `ALTER TABLE`
* `INSERT`
* `SELECT`
* `WHERE`
* `UPDATE`
* `DELETE`
* Operators
* SQL functions
* `GROUP BY`
* `HAVING`

Example:

```sql
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Major VARCHAR(50)
);
```

---

## Unit III — ER Model & Advanced SQL

Move from basic queries to advanced database operations.

Topics include:

* Entities and attributes
* Entity sets
* Relationships
* Relationship constraints
* Specialization and generalization
* Inheritance
* Integrity constraints
* Nested subqueries
* Correlated subqueries
* Aggregate queries
* Ordering
* Joins
* Views
* Set operations

---

## Unit IV — Normalization & Transactions

Learn how databases are designed correctly and how transactions are managed.

Topics include:

* Functional dependencies
* Schema refinement
* 1NF
* 2NF
* 3NF
* BCNF
* 4NF
* 5NF
* Surrogate keys
* Lossless decomposition
* Dependency preservation
* Transactions
* ACID properties
* Serializability
* Recoverability
* Transaction states
* Database recovery

---

## Unit V — Indexing & Database Tuning

Learn how databases improve query performance.

Topics include:

* File organization
* Primary indexes
* Secondary indexes
* Cluster indexes
* B-tree
* B+ tree
* Hash indexing
* Index operations
* Query optimization
* Performance tuning
* Backup and recovery

---

# 🎯 Learning Levels

### Level 1 — Beginner

```text
CREATE TABLE
INSERT
SELECT
WHERE
UPDATE
DELETE
```

### Level 2 — Intermediate

```text
Constraints
ALTER TABLE
Operators
Functions
GROUP BY
HAVING
ORDER BY
```

### Level 3 — Advanced SQL

```text
Relationships
Joins
Subqueries
Correlated Subqueries
Views
Set Operations
```

### Level 4 — Database Design

```text
ER Model
Functional Dependencies
Normalization
Decomposition
Transactions
```

### Level 5 — Database Performance

```text
Indexes
B+ Trees
Hash Indexing
Query Optimization
Performance Tuning
Backup & Recovery
```

---

# 💡 How to Use This Repository

If you are a beginner, follow the units in order.

1. Read the short concept notes.
2. Run the SQL examples yourself.
3. Modify the queries and experiment.
4. Try writing queries without looking at the solution.
5. Use the final project to combine everything.

> **Don't just read SQL. Write and execute it.**

---

# 🛠️ SQL Practice

The SQL files are designed to be **executed and modified**, not just read.

Each SQL file focuses on one concept so that beginners can understand exactly what each command does.

---

# 🚀 Final Project

The repository will end with a **Online Shopping Management System** project that combines concepts learned throughout the course.

The project will include:

```text
Departments
Students
Faculty
Courses
Enrollments
```

It will gradually use:

* Table creation
* Primary and foreign keys
* Constraints
* Insert/update/delete
* Basic queries
* Aggregate functions
* Joins
* Subqueries
* Correlated subqueries
* Views
* Advanced queries
* Indexing

---

# 📌 Goal

By completing this repository, you should be able to:

* Understand DBMS fundamentals
* Design relational databases
* Write SQL from basic to advanced level
* Understand database normalization
* Work with transactions
* Understand indexing and query optimization
* Build a small database project
* Use SQL confidently in academic and practical projects

---

## ⭐ Progress

* [ ] Unit I — DBMS Fundamentals
* [ ] Unit II — Relational Model & Basic SQL
* [ ] Unit III — ER Model & Advanced SQL
* [ ] Unit IV — Normalization & Transactions
* [ ] Unit V — Indexing & Database Tuning
* [ ] Online Shopping Management System
