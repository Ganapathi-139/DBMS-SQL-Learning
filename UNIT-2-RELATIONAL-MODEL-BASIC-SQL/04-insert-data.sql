# INSERT Data

## 1. What is INSERT?

`INSERT` is used to add new records to a table.

---

## 2. Insert Values into All Columns

```sql
INSERT INTO Student
VALUES (101, 'Alice', 'CSE', '2005-05-12');
```

The values must follow the same order as the table columns.

---

## 3. Insert into Specific Columns

```sql
INSERT INTO Student (StudentID, StudentName, Major)
VALUES (102, 'Bob', 'ECE');
```

Columns not specified may receive `NULL` or their `DEFAULT` value, depending on the table definition.

---

## 4. Insert Multiple Rows

```sql
INSERT INTO Student (StudentID, StudentName, Major)
VALUES
    (103, 'Carol', 'CSE'),
    (104, 'David', 'IT'),
    (105, 'Emma', 'ECE');
```

---

## 5. Example Table

After inserting the records:

| StudentID | StudentName | Major |
| --------: | ----------- | ----- |
|       101 | Alice       | CSE   |
|       102 | Bob         | ECE   |
|       103 | Carol       | CSE   |
|       104 | David       | IT    |
|       105 | Emma        | ECE   |

---

## 6. Important Points

* Text values are written inside quotes.
* Dates are commonly written as `'YYYY-MM-DD'`.
* Primary key values must be unique.
* Foreign key values must satisfy the referenced relationship.

## Key Takeaway

> `INSERT` adds new records to a table.
