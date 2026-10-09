# Indexing

## 1. What is an Index?

An index is a data structure used to **find records faster** in a database.

It works similar to an index in a textbook.

Instead of searching every row in a table, the DBMS can use an index to locate the required data more efficiently.

---

## 2. Why Use Indexing?

Without an index:

```text
Search → Check many/all rows → Find required row
```

With an index:

```text
Search → Use index → Locate required row
```

### Advantages

* Faster data retrieval
* Faster searching using `WHERE`
* Can improve join performance
* Useful for frequently searched columns

### Disadvantages

* Requires additional storage
* INSERT operations can become slower
* UPDATE operations can become slower
* DELETE operations may require index maintenance

---

## 3. Creating an Index

Example:

```sql
CREATE INDEX idx_employee_name
ON Employee(EmpName);
```

Now the DBMS can use this index when searching by `EmpName`.

---

## 4. Viewing Indexes

In MySQL:

```sql
SHOW INDEX FROM Employee;
```

---

## 5. Removing an Index

```sql
DROP INDEX idx_employee_name
ON Employee;
```

---

## 6. Primary Index

A primary index is associated with the table's primary key.

Example:

```sql
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100)
);
```

The primary key is indexed by the DBMS.

---

## 7. Secondary Index

A secondary index is created on a column other than the primary key.

Example:

```sql
CREATE INDEX idx_student_name
ON Student(StudentName);
```

---

## 8. Clustered Index

A clustered index determines how table records are physically organized or closely associated with the index order, depending on the DBMS.

A table generally has only one clustered organization.

---

## 9. Index Example

Suppose we frequently execute:

```sql
SELECT *
FROM Student
WHERE StudentName = 'Rahul';
```

Creating an index can help:

```sql
CREATE INDEX idx_student_name
ON Student(StudentName);
```

---

## 10. Important Points

Use indexes on columns that are:

* Frequently searched
* Frequently used for joins
* Frequently used for sorting
* Frequently used in filtering conditions

Avoid creating unnecessary indexes because they require storage and maintenance.

---

## Key Takeaway

**Index → Faster data retrieval**

**Primary index → Related to primary key**

**Secondary index → Additional index**

**More indexes → Faster reads but more maintenance**
