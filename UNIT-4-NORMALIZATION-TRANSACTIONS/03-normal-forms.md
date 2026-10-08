# Normal Forms

## 1. First Normal Form — 1NF

A relation is in **1NF** when:

* Each column contains atomic values.
* There are no repeating groups.
* Each cell contains a single value.

### Not in 1NF

| StudentID | StudentName | Courses  |
| --------- | ----------- | -------- |
| 101       | Rahul       | DBMS, OS |

`Courses` contains multiple values.

### In 1NF

| StudentID | StudentName | Course |
| --------- | ----------- | ------ |
| 101       | Rahul       | DBMS   |
| 101       | Rahul       | OS     |

---

## 2. Second Normal Form — 2NF

A relation is in **2NF** when:

1. It is already in 1NF.
2. It has no partial dependency.

### Example

Suppose:

```text
(StudentID, CourseID) → Grade
StudentID → StudentName
```

`StudentName` depends only on StudentID.

Therefore, there is a partial dependency.

### Solution

Separate the tables:

**Student**

```text
StudentID
StudentName
```

**Enrollment**

```text
StudentID
CourseID
Grade
```

---

## 3. Third Normal Form — 3NF

A relation is in **3NF** when:

1. It is already in 2NF.
2. It has no transitive dependency.

Example:

```text
StudentID → DeptID
DeptID → DeptName
```

Therefore:

```text
StudentID → DeptName
```

`DeptName` should be stored in a separate Department table.

### Better Design

**Student**

```text
StudentID
StudentName
DeptID
```

**Department**

```text
DeptID
DeptName
```

---

## 4. BCNF

BCNF stands for **Boyce-Codd Normal Form**.

A relation is in BCNF if:

> Every determinant is a candidate key.

BCNF is stricter than 3NF.

For basic database design, remember:

**BCNF is a stronger form of 3NF.**

---

## 5. Fourth Normal Form — 4NF

4NF mainly deals with **multivalued dependencies**.

A relation should not contain independent multi-valued facts about the same entity.

Example:

A student may have:

* Multiple hobbies
* Multiple languages

If these are independent, storing them together can create unnecessary combinations.

A better design is:

**StudentHobby**

```text
StudentID
Hobby
```

**StudentLanguage**

```text
StudentID
Language
```

---

## 6. Fifth Normal Form — 5NF

5NF deals with **join dependencies**.

The goal is to decompose relations so that they can be reconstructed correctly using joins.

5NF is mainly important for complex database designs.

---

## 7. Normal Forms Summary

| Normal Form | Main Idea                                   |
| ----------- | ------------------------------------------- |
| 1NF         | Atomic values                               |
| 2NF         | Remove partial dependency                   |
| 3NF         | Remove transitive dependency                |
| BCNF        | Every determinant is a candidate key        |
| 4NF         | Remove problematic multivalued dependencies |
| 5NF         | Handle join dependencies                    |

---

## Exam Shortcut

Remember:

```text
1NF  → Atomic values
2NF  → No partial dependency
3NF  → No transitive dependency
BCNF → Stronger than 3NF
4NF  → Multivalued dependencies
5NF  → Join dependencies
```
