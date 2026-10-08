# Decomposition

## 1. What is Decomposition?

Decomposition means splitting a large relation into smaller relations.

The purpose is to:

* Reduce redundancy
* Remove anomalies
* Improve database design
* Achieve normalization

---

## 2. Example

Suppose we have:

```text
Student(StudentID, StudentName, DeptID, DeptName)
```

We can decompose it into:

### Student

```text
Student(StudentID, StudentName, DeptID)
```

### Department

```text
Department(DeptID, DeptName)
```

`DeptID` connects the two tables.

---

## 3. Lossless Join Decomposition

A decomposition is **lossless** if joining the decomposed tables gives the original information correctly.

Example:

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

They can be joined using `DeptID`.

```sql
SELECT s.StudentID,
       s.StudentName,
       d.DeptName
FROM Student s
JOIN Department d
    ON s.DeptID = d.DeptID;
```

The decomposition is lossless when the original information can be reconstructed without incorrect or spurious rows.

---

## 4. Dependency Preservation

A decomposition is **dependency preserving** when the important functional dependencies can still be enforced using the decomposed relations.

Example:

```text
DeptID → DeptName
```

If both attributes remain together in:

```text
Department(DeptID, DeptName)
```

the dependency can be maintained directly.

---

## 5. Lossless vs Dependency Preserving

| Concept                 | Main Question                                            |
| ----------------------- | -------------------------------------------------------- |
| Lossless Join           | Can the original information be reconstructed correctly? |
| Dependency Preservation | Can functional dependencies be maintained easily?        |

---

## 6. Properties of Good Decomposition

A good decomposition should ideally provide:

* Lossless join
* Dependency preservation
* Reduced redundancy
* Fewer anomalies
* Better consistency

---

## Key Takeaway

**Lossless Join → No incorrect information after joining.**

**Dependency Preservation → Functional dependencies remain enforceable.**
