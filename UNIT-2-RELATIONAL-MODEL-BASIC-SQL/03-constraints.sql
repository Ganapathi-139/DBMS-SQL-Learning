# SQL Constraints

## 1. What are Constraints?

**Constraints** are rules applied to table columns to maintain data accuracy and integrity.

---

## 2. PRIMARY KEY

Uniquely identifies each row.

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100)
);
```

---

## 3. NOT NULL

Prevents a column from containing `NULL`.

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL
);
```

---

## 4. UNIQUE

Ensures that values in a column are not duplicated.

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);
```

---

## 5. DEFAULT

Provides a value automatically when no value is supplied.

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Status VARCHAR(20) DEFAULT 'Active'
);
```

---

## 6. CHECK

Ensures that a condition is satisfied.

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Age INT CHECK (Age >= 17)
);
```

---

## 7. FOREIGN KEY

Creates a relationship between tables.

```sql
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
```

---

## Constraint Summary

| Constraint    | Purpose                   |
| ------------- | ------------------------- |
| `PRIMARY KEY` | Uniquely identifies rows  |
| `FOREIGN KEY` | Creates relationships     |
| `NOT NULL`    | Prevents missing values   |
| `UNIQUE`      | Prevents duplicate values |
| `CHECK`       | Validates a condition     |
| `DEFAULT`     | Provides a default value  |

## Key Takeaway

> Constraints help maintain **data integrity and consistency**.
