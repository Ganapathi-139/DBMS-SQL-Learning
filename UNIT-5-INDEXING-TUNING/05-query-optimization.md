# Query Optimization

## 1. What is Query Optimization?

Query optimization is the process of finding an efficient way to execute an SQL query.

The same result can sometimes be obtained using different execution strategies.

The DBMS tries to choose a low-cost execution plan.

---

## 2. Why Query Optimization?

Good query optimization can:

* Reduce execution time
* Reduce disk I/O
* Reduce CPU usage
* Improve overall database performance

---

## 3. Query Processing

A simplified process is:

```text
SQL Query
   ↓
Parsing
   ↓
Query Analysis
   ↓
Optimization
   ↓
Execution Plan
   ↓
Result
```

---

## 4. Query Execution Plan

An execution plan describes how the DBMS intends to execute a query.

For example, it may decide to:

* Use an index
* Scan a table
* Perform a join
* Sort records
* Filter rows

---

## 5. EXPLAIN

In MySQL, `EXPLAIN` can be used to inspect how a query is executed.

Example:

```sql
EXPLAIN
SELECT *
FROM Student
WHERE StudentID = 101;
```

The output can provide information about the access method and indexes considered by the optimizer.

---

## 6. Index-Based Optimization

Suppose we frequently run:

```sql
SELECT *
FROM Student
WHERE StudentName = 'Rahul';
```

An index can help:

```sql
CREATE INDEX idx_student_name
ON Student(StudentName);
```

The DBMS may then use the index instead of scanning every row.

---

## 7. Selection Pushdown

Filtering rows as early as possible can reduce the amount of data processed later.

Instead of processing all rows first:

```text
All Rows
   ↓
Join
   ↓
Filter
```

an optimizer may use:

```text
All Rows
   ↓
Filter
   ↓
Join
```

This can reduce processing.

---

## 8. Join Optimization

When multiple tables are joined, the DBMS can choose different:

* Join orders
* Join algorithms
* Access paths

The optimizer attempts to select an efficient combination.

---

## 9. Basic Performance Tips

### Select Only Required Columns

Instead of:

```sql
SELECT *
FROM Student;
```

prefer:

```sql
SELECT StudentID, StudentName
FROM Student;
```

when those are the only columns needed.

### Use Appropriate Indexes

Index columns that are frequently used for:

* Searching
* Joining
* Sorting
* Filtering

### Filter Early

Use appropriate `WHERE` conditions to reduce unnecessary rows.

---

## 10. Query Optimization Goals

The optimizer tries to reduce:

* Disk I/O
* CPU cost
* Memory usage
* Execution time

---

## Key Takeaway

**Query optimization → Find an efficient execution strategy.**

Remember:

```text
SQL Query
   ↓
Optimizer
   ↓
Execution Plan
   ↓
Efficient Execution
```
