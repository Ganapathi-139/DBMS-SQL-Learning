# SELECT and WHERE

## 1. SELECT

`SELECT` is used to retrieve data from a table.

### Select all columns

```sql
SELECT *
FROM Student;
```

### Select specific columns

```sql
SELECT StudentID, StudentName
FROM Student;
```

---

## 2. WHERE

`WHERE` filters rows based on a condition.

```sql
SELECT *
FROM Student
WHERE Major = 'CSE';
```

---

## 3. Comparison Operators

```sql
SELECT *
FROM Student
WHERE StudentID = 101;
```

Common operators:

```text
=     Equal
<>    Not equal
>     Greater than
<     Less than
>=    Greater than or equal
<=    Less than or equal
```

Example:

```sql
SELECT *
FROM Student
WHERE StudentID > 102;
```

---

## 4. DISTINCT

`DISTINCT` removes duplicate results.

```sql
SELECT DISTINCT Major
FROM Student;
```

---

## 5. ORDER BY

Sorts the result.

### Ascending

```sql
SELECT *
FROM Student
ORDER BY StudentName ASC;
```

### Descending

```sql
SELECT *
FROM Student
ORDER BY StudentName DESC;
```

---

## 6. LIMIT

In DBMSs that support `LIMIT`, it can restrict the number of returned rows.

```sql
SELECT *
FROM Student
LIMIT 3;
```

---

## 7. Basic Query Pattern

```sql
SELECT column1, column2
FROM table_name
WHERE condition
ORDER BY column1;
```

## Key Takeaway

> `SELECT` retrieves data, while `WHERE` filters the rows you want.
