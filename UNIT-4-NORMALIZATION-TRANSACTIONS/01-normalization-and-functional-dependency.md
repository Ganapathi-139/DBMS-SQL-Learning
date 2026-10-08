# Normalization and Functional Dependency

## 1. What is Normalization?

Normalization is the process of organizing data into well-structured tables.

The main goals are:

* Reduce data redundancy
* Avoid update anomalies
* Improve data consistency
* Make database design easier to maintain

### Example of Redundancy

Suppose we have:

| StudentID | StudentName | DeptID | DeptName |
| --------- | ----------- | ------ | -------- |
| 101       | Rahul       | 1      | CSE      |
| 102       | Priya       | 1      | CSE      |
| 103       | Arun        | 2      | IT       |

`DeptName` is repeated for every student in the same department.

A better design is:

**Student**

| StudentID | StudentName | DeptID |
| --------- | ----------- | ------ |
| 101       | Rahul       | 1      |
| 102       | Priya       | 1      |
| 103       | Arun        | 2      |

**Department**

| DeptID | DeptName |
| ------ | -------- |
| 1      | CSE      |
| 2      | IT       |

---

## 2. Data Anomalies

Poorly designed tables can cause:

### Insert Anomaly

Cannot insert some information without unrelated information.

### Update Anomaly

The same information must be updated in multiple rows.

### Delete Anomaly

Deleting one record accidentally removes useful information.

---

## 3. Functional Dependency

A functional dependency describes a relationship between attributes.

It is written as:

`A → B`

Meaning:

**A determines B.**

Example:

`StudentID → StudentName`

If StudentID is known, the StudentName can be determined.

---

## 4. Types of Functional Dependency

### Full Functional Dependency

An attribute depends on the complete key.

Example:

`(StudentID, CourseID) → Grade`

Grade depends on both StudentID and CourseID.

### Partial Dependency

A non-key attribute depends on only part of a composite key.

Example:

`(StudentID, CourseID) → StudentName`

But:

`StudentID → StudentName`

So StudentName has a partial dependency.

### Transitive Dependency

A non-key attribute depends on another non-key attribute.

Example:

`StudentID → DeptID`

`DeptID → DeptName`

Therefore:

`StudentID → DeptName`

This is a transitive dependency.

---

## 5. Why Normalization?

Normalization helps us move from:

**One large table**

to:

**Multiple related tables**

using keys and relationships.

The most commonly studied normal forms are:

`1NF → 2NF → 3NF → BCNF → 4NF → 5NF`

---

## Key Takeaway

Remember:

**1NF → Remove repeating groups**

**2NF → Remove partial dependency**

**3NF → Remove transitive dependency**

**BCNF → Stronger version of 3NF**
