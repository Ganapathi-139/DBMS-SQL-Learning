# Lossless Join and Dependency Preservation

## 1. Decomposition

Decomposition means breaking one large relation into smaller relations.

Example:

`Student(StudentID, StudentName, DeptID, DeptName)`

can be divided into:

**Student**

`StudentID, StudentName, DeptID`

**Department**

`DeptID, DeptName`

---

## 2. Lossless Join Decomposition

A decomposition is **lossless** if joining the decomposed tables produces the original information without losing or adding incorrect rows.

### Example

Original:

**Student**

| StudentID | StudentName | DeptID |
| --------- | ----------- | ------ |
| 101       | Rahul       | 1      |
| 102       | Priya       | 2      |

**Department**

| DeptID | DeptName |
| ------ | -------- |
| 1      | CSE      |
| 2      | IT       |

Joining them using `DeptID` reconstructs the required information.

```sql
SELECT s.StudentID,
       s.StudentName,
       d.DeptName
FROM Student s
JOIN Department d
    ON s.DeptID = d.DeptID;
```

---

## 3. Dependency Preservation

A decomposition is **dependency preserving** if the important functional dependencies can still be enforced using the decomposed tables without needing to join them.

### Example

If:

`DeptID → DeptName`

then placing `DeptID` and `DeptName` together in the Department table preserves this dependency.

---

## 4. Important Difference

### Lossless Join

Focuses on:

**Can we reconstruct the original relation correctly?**

### Dependency Preservation

Focuses on:

**Can we maintain the functional dependencies easily?**

---

## 5. Good Decomposition

A good decomposition should ideally provide:

* Less redundancy
* Lossless join
* Dependency preservation
* Better consistency

---

## Key Takeaway

**Lossless = No information is incorrectly lost or added after joining.**

**Dependency preserving = Functional dependencies remain enforceable after decomposition.**
