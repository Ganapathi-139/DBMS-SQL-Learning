# Relational Model

## 1. What is the Relational Model?

The **relational model** represents data using **relations (tables)**.

A table consists of:

* **Rows** — records/tuples
* **Columns** — attributes
* **Values** — data stored in cells

Example:

| StudentID | StudentName | Major |
| --------: | ----------- | ----- |
|       101 | Alice       | CSE   |
|       102 | Bob         | ECE   |
|       103 | Carol       | CSE   |

---

## 2. Important Terms

| Term                  | Meaning                               |
| --------------------- | ------------------------------------- |
| **Relation**          | A table                               |
| **Tuple**             | A row                                 |
| **Attribute**         | A column                              |
| **Domain**            | Set of valid values for an attribute  |
| **Relation Schema**   | Structure of a relation               |
| **Relation Instance** | Data currently stored in the relation |

Example schema:

```text
Student(StudentID, StudentName, Major)
```

---

## 3. Keys

### Primary Key

A **primary key** uniquely identifies each row.

```text
StudentID → Primary Key
```

A primary key:

* Must be unique
* Cannot be `NULL`

### Candidate Key

A **candidate key** is an attribute or set of attributes that can uniquely identify a row.

### Alternate Key

A candidate key that is **not selected as the primary key**.

### Foreign Key

A **foreign key** refers to a key in another table and is used to establish relationships.

Example:

```text
Department
DepartmentID ← Primary Key

Student
DepartmentID ← Foreign Key
```

---

## 4. NULL

`NULL` represents a missing, unknown, or unavailable value.

It is **not** the same as:

```text
0
''
FALSE
```

To check for NULL:

```sql
SELECT *
FROM Student
WHERE Major IS NULL;
```

---

## 5. Relational Algebra — Basic Operations

Relational algebra provides operations for retrieving and manipulating relations.

### Selection

Selects rows that satisfy a condition.

```text
σ Major = 'CSE' (Student)
```

### Projection

Selects specific columns.

```text
π StudentName, Major (Student)
```

### Union

Combines compatible relations.

```text
A ∪ B
```

### Set Difference

Returns tuples present in one relation but not another.

```text
A − B
```

### Cartesian Product

Combines every row of one relation with every row of another.

```text
A × B
```

### Rename

Renames a relation or its attributes.

```text
ρ NewStudent(Student)
```

---

## 6. Relational Model Summary

```text
Relation  → Table
Tuple     → Row
Attribute → Column
Domain    → Valid values
Primary Key → Unique identifier
Foreign Key → Relationship between tables
```

## Key Takeaway

> The **relational model stores data in tables**, where rows represent records and columns represent attributes.
