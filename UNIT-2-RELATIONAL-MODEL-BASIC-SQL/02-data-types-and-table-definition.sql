# Data Types and Table Definition

## 1. Common SQL Data Types

| Data Type      | Purpose              | Example        |
| -------------- | -------------------- | -------------- |
| `INT`          | Whole numbers        | `101`          |
| `DECIMAL(p,s)` | Exact decimal values | `50000.50`     |
| `VARCHAR(n)`   | Variable-length text | `'Alice'`      |
| `CHAR(n)`      | Fixed-length text    | `'M'`          |
| `DATE`         | Date values          | `'2026-10-08'` |
| `TIME`         | Time values          | `'10:30:00'`   |
| `BOOLEAN`      | True/false values    | `TRUE`         |

---

## 2. CREATE TABLE

`CREATE TABLE` is used to create a new table.

```sql
CREATE TABLE Student (
    StudentID INT,
    StudentName VARCHAR(100),
    Major VARCHAR(50),
    DOB DATE
);
```

---

## 3. Viewing the Table Structure

The exact command depends on the DBMS.

For MySQL:

```sql
DESCRIBE Student;
```

---

## 4. ALTER TABLE

`ALTER TABLE` modifies an existing table.

### Add a column

```sql
ALTER TABLE Student
ADD Email VARCHAR(100);
```

### Modify a column

```sql
ALTER TABLE Student
MODIFY StudentName VARCHAR(150);
```

### Drop a column

```sql
ALTER TABLE Student
DROP COLUMN Email;
```

---

## 5. DROP TABLE

Deletes the table and its data.

```sql
DROP TABLE Student;
```

> `DROP TABLE` should be used carefully because the table structure and data are removed.

## Key Takeaway

> `CREATE TABLE` creates a table, while `ALTER TABLE` changes its structure.
