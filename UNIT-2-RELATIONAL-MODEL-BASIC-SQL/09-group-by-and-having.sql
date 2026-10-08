# GROUP BY and HAVING

## 1. GROUP BY

`GROUP BY` groups rows having the same value.

Example:

```sql
SELECT Major, COUNT(*) AS StudentCount
FROM Student
GROUP BY Major;
```

Result conceptually:

| Major | StudentCount |
| ----- | -----------: |
| CSE   |            2 |
| ECE   |            2 |
| IT    |            1 |

---

## 2. Aggregate Functions with GROUP BY

### Count

```sql
SELECT Major, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Major;
```

### Average

```sql
SELECT Major, AVG(StudentID) AS AverageID
FROM Student
GROUP BY Major;
```

### Minimum and Maximum

```sql
SELECT Major,
       MIN(StudentID) AS MinimumID,
       MAX(StudentID) AS MaximumID
FROM Student
GROUP BY Major;
```

---

## 3. HAVING

`HAVING` filters groups created by `GROUP BY`.

```sql
SELECT Major, COUNT(*) AS TotalStudents
FROM Student
GROUP BY Major
HAVING COUNT(*) > 1;
```

This returns only majors having more than one student.

---

## 4. WHERE vs HAVING

| WHERE                       | HAVING                                 |
| --------------------------- | -------------------------------------- |
| Filters rows                | Filters groups                         |
| Applied before grouping     | Applied after grouping                 |
| Used for individual records | Commonly used with aggregate functions |

Example:

```sql
SELECT Major, COUNT(*) AS TotalStudents
FROM Student
WHERE StudentID > 100
GROUP BY Major
HAVING COUNT(*) >= 2;
```

---

## 5. Common Query Order

A useful order to remember is:

```text
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

Example:

```sql
SELECT Major, COUNT(*) AS TotalStudents
FROM Student
WHERE StudentID > 100
GROUP BY Major
HAVING COUNT(*) >= 2
ORDER BY TotalStudents DESC;
```

## Key Takeaway

> `GROUP BY` creates groups, while `HAVING` filters those groups.
