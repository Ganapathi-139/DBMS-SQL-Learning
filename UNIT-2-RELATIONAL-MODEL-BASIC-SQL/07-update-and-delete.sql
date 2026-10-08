# UPDATE and DELETE

## 1. UPDATE

`UPDATE` modifies existing records.

### Update one row

```sql
UPDATE Student
SET Major = 'IT'
WHERE StudentID = 101;
```

### Update multiple rows

```sql
UPDATE Student
SET Major = 'CSE'
WHERE Major = 'IT';
```

> Always use `WHERE` carefully. Without it, all rows may be updated.

---

## 2. DELETE

`DELETE` removes records from a table.

### Delete one record

```sql
DELETE FROM Student
WHERE StudentID = 105;
```

### Delete records matching a condition

```sql
DELETE FROM Student
WHERE Major = 'ECE';
```

> Without `WHERE`, all records may be deleted.

```sql
DELETE FROM Student;
```

This removes the rows but keeps the table structure.

---

## 3. UPDATE vs DELETE

| Command  | Purpose               |
| -------- | --------------------- |
| `UPDATE` | Changes existing data |
| `DELETE` | Removes existing rows |

## Key Takeaway

> Use `UPDATE` to modify data and `DELETE` to remove data. Always check the `WHERE` condition before executing them.
