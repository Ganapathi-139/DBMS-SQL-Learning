# SQL Functions

SQL functions perform operations on data and return a result.

## 1. String Functions

Used to work with text.

```sql
SELECT UPPER(StudentName)
FROM Student;
```

```sql
SELECT LOWER(StudentName)
FROM Student;
```

```sql
SELECT LENGTH(StudentName)
FROM Student;
```

---

## 2. Numeric Functions

Used to perform mathematical operations.

```sql
SELECT ROUND(45.678, 2);
```

```sql
SELECT ABS(-25);
```

```sql
SELECT CEIL(45.2);
```

```sql
SELECT FLOOR(45.8);
```

---

## 3. Date Functions

Date functions work with date/time values.

Examples vary between DBMSs.

```sql
SELECT CURRENT_DATE;
```

```sql
SELECT CURRENT_TIMESTAMP;
```

Example:

```sql
SELECT StudentName, DOB
FROM Student;
```

---

## 4. Aggregate Functions

Aggregate functions operate on multiple rows and return a single result.

### COUNT

```sql
SELECT COUNT(*)
FROM Student;
```

### SUM

```sql
SELECT SUM(StudentID)
FROM Student;
```

### AVG

```sql
SELECT AVG(StudentID)
FROM Student;
```

### MIN

```sql
SELECT MIN(StudentID)
FROM Student;
```

### MAX

```sql
SELECT MAX(StudentID)
FROM Student;
```

---

## Function Categories

| Category  | Examples                                      |
| --------- | --------------------------------------------- |
| String    | `UPPER()`, `LOWER()`, `LENGTH()`              |
| Numeric   | `ROUND()`, `ABS()`, `CEIL()`, `FLOOR()`       |
| Date/Time | `CURRENT_DATE`, `CURRENT_TIMESTAMP`           |
| Aggregate | `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()` |

> Function names and available functions can differ slightly between MySQL, PostgreSQL, Oracle, and SQL Server.
