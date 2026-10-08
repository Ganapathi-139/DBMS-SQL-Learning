# SQL Operators

## 1. Arithmetic Operators

Used for calculations.

| Operator | Meaning        |
| -------- | -------------- |
| `+`      | Addition       |
| `-`      | Subtraction    |
| `*`      | Multiplication |
| `/`      | Division       |
| `%`      | Modulus        |

Example:

```sql
SELECT StudentID, StudentID + 1000 AS NewID
FROM Student;
```

---

## 2. Comparison Operators

Used to compare values.

```sql
SELECT *
FROM Student
WHERE StudentID >= 103;
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

---

## 3. Logical Operators

### AND

Both conditions must be true.

```sql
SELECT *
FROM Student
WHERE Major = 'CSE'
  AND StudentID > 100;
```

### OR

At least one condition must be true.

```sql
SELECT *
FROM Student
WHERE Major = 'CSE'
   OR Major = 'ECE';
```

### NOT

Reverses a condition.

```sql
SELECT *
FROM Student
WHERE NOT Major = 'CSE';
```

---

## 4. BETWEEN

Checks whether a value falls within a range.

```sql
SELECT *
FROM Student
WHERE StudentID BETWEEN 101 AND 104;
```

---

## 5. IN

Checks whether a value matches any value in a list.

```sql
SELECT *
FROM Student
WHERE Major IN ('CSE', 'ECE');
```

---

## 6. LIKE

Used for pattern matching.

```sql
SELECT *
FROM Student
WHERE StudentName LIKE 'A%';
```

Common patterns:

```text
'A%'   → starts with A
'%a'   → ends with a
'%an%' → contains "an"
'_a%'  → second character is a
```

---

## 7. IS NULL

Checks for missing values.

```sql
SELECT *
FROM Student
WHERE Major IS NULL;
```

For non-null values:

```sql
SELECT *
FROM Student
WHERE Major IS NOT NULL;
```

## Key Takeaway

> SQL operators are used to **calculate, compare, filter, and combine conditions**.
