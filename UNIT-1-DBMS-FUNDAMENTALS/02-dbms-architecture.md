# DBMS Architecture

## 1. What is DBMS Architecture?

**DBMS architecture** describes how users, applications, the DBMS, and the database interact with each other.

---

## 2. Basic DBMS Structure

```text
Users / Applications
        ↓
      DBMS
        ↓
    Database
```

The DBMS acts as an interface between users/applications and the stored data.

---

## 3. Three-Schema Architecture

The three-schema architecture separates the database into three levels:

```text
External Level
      ↓
Conceptual Level
      ↓
Internal Level
      ↓
Physical Storage
```

### External Level

The **external level** is the user view of the database.

Different users can have different views.

**Example:**

A student may see:

```text
StudentID | Name | Course
```

An administrator may see additional information.

### Conceptual Level

The **conceptual level** describes the complete logical structure of the database.

It includes:

* Entities
* Relationships
* Attributes
* Constraints

### Internal Level

The **internal level** describes how data is physically stored.

It deals with:

* Storage structures
* Files
* Indexes
* Physical data organization

---

## 4. Data Independence

Data independence means changes at one level should have minimal effect on other levels.

### Physical Data Independence

Changes to physical storage should not affect the logical database structure.

### Logical Data Independence

Changes to the logical structure should not require changes to user views.

---

## Key Takeaway

> **Three-schema architecture = External + Conceptual + Internal levels.**
