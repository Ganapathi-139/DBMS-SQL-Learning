# Normalization

## 1. What is Normalization?

Normalization is the process of organizing data in a database to:

* Reduce data redundancy
* Avoid data anomalies
* Improve data consistency
* Make database design easier to maintain

The main idea is to divide a large table into smaller, related tables.

---

## 2. Problems with Poor Database Design

Consider:

| StudentID | StudentName | DeptID | DeptName |
| --------- | ----------- | ------ | -------- |
| 101       | Rahul       | 1      | CSE      |
| 102       | Priya       | 1      | CSE      |
| 103       | Arun        | 2      | IT       |

`DeptName` is repeated for students belonging to the same department.

This can cause problems.

### Insert Anomaly

You may not be able to add a new department until a student exists for that department.

### Update Anomaly

If the name of CSE changes, multiple rows may need to be updated.

### Delete Anomaly

Deleting the last student of a department may also remove the only stored information about that department.

---

## 3. Schema Refinement

Schema refinement means improving a database schema by:

1. Identifying redundancy
2. Finding dependencies
3. Decomposing large relations
4. Creating better related tables

Example:

Instead of:

`Student(StudentID, StudentName, DeptID, DeptName)`

Use:

**Student**

`StudentID, StudentName, DeptID`

**Department**

`DeptID, DeptName`

The two tables are connected using `DeptID`.

---

## 4. Goals of Normalization

A good normalized database should:

* Minimize unnecessary duplication
* Maintain data consistency
* Reduce insertion, deletion, and update anomalies
* Have meaningful relationships between tables
* Make data easier to maintain

---

## 5. Normalization Process

The commonly studied sequence is:

```text
1NF
 ↓
2NF
 ↓
3NF
 ↓
BCNF
 ↓
4NF
 ↓
5NF
```

Each higher normal form places additional restrictions on the structure of the relation.

---

## Key Takeaway

Normalization is mainly about **organizing data properly and reducing redundancy**.

Remember:

**Normalization → Less redundancy → Fewer anomalies → Better database design**
