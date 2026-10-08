# Functional Dependencies

## 1. What is a Functional Dependency?

A functional dependency describes a relationship between attributes.

It is written as:

`A → B`

It means:

**A determines B.**

If two rows have the same value of A, they must have the same value of B.

---

## 2. Example

Consider:

| StudentID | StudentName | DeptID |
| --------- | ----------- | ------ |
| 101       | Rahul       | 1      |
| 102       | Priya       | 1      |
| 103       | Arun        | 2      |

We can say:

`StudentID → StudentName`

and:

`StudentID → DeptID`

Because knowing the StudentID determines the student's name and department.

---

## 3. Full Functional Dependency

A non-key attribute is fully dependent on the **complete candidate key**.

Example:

`(StudentID, CourseID) → Grade`

The grade depends on the combination of StudentID and CourseID.

Neither StudentID nor CourseID alone determines the grade.

---

## 4. Partial Dependency

A partial dependency occurs when a non-key attribute depends on only **part of a composite key**.

Example:

```text
(StudentID, CourseID) → StudentName
```

But:

```text
StudentID → StudentName
```

Therefore, StudentName depends only on part of the composite key.

This is called a **partial dependency**.

Partial dependencies are removed when converting a relation to **2NF**.

---

## 5. Transitive Dependency

A transitive dependency occurs when a non-key attribute depends on another non-key attribute.

Example:

```text
StudentID → DeptID
DeptID → DeptName
```

Therefore:

```text
StudentID → DeptName
```

This is a transitive dependency.

Transitive dependencies are removed when converting a relation to **3NF**.

---

## 6. Functional Dependency and Keys

A candidate key determines all attributes in a relation.

Example:

```text
StudentID → StudentName, DeptID, Email
```

If StudentID uniquely identifies a student, it can determine the other attributes.

---

## 7. Quick Comparison

| Dependency | Meaning                                                |
| ---------- | ------------------------------------------------------ |
| Full       | Depends on the complete key                            |
| Partial    | Depends on part of a composite key                     |
| Transitive | Non-key attribute depends on another non-key attribute |

---

## Key Takeaway

Remember:

**Full dependency → Complete key**

**Partial dependency → Part of composite key**

**Transitive dependency → Non-key → Non-key**
