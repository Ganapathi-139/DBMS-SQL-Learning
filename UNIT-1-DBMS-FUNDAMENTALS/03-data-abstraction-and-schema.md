# Data Abstraction and Schema

## 1. What is Data Abstraction?

**Data abstraction** hides unnecessary implementation details and shows users only the information they need.

---

## 2. Levels of Data Abstraction

### 1. Physical Level

Describes **how data is physically stored**.

Example:

```text
Files, blocks, indexes, storage
```

### 2. Logical Level

Describes **what data is stored and the relationships between data**.

Example:

```text
Student(StudentID, Name, Department)
```

### 3. View Level

Describes **what a particular user can see**.

Example:

```text
Student View
StudentID | Name | Department
```

### Simple Representation

```text
View Level
    ↓
Logical Level
    ↓
Physical Level
```

---

## 3. What is a Schema?

A **schema** is the structure or design of a database.

Example:

```text
Student(StudentID, StudentName, Department)
```

The schema defines the structure, not the actual records.

---

## 4. Schema vs Data

| Schema                     | Data                 |
| -------------------------- | -------------------- |
| Structure of database      | Actual stored values |
| Changes less frequently    | Changes frequently   |
| Example: Student(ID, Name) | Example: 101, Alice  |

---

## 5. Instance

A **database instance** is the actual data stored in the database at a particular time.

Example:

```text
Student
----------------
101 | Alice
102 | Bob
```

The table structure is the **schema** and the current records form the **instance**.

---

## Key Takeaway

> **Schema = database structure.**
> **Instance = actual data at a particular time.**
