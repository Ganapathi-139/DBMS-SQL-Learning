# ER Model

## 1. What is an ER Model?

The **Entity-Relationship (ER) model** is used to represent the structure of a database using:

* Entities
* Attributes
* Relationships
* Constraints

It is mainly used during **database design**.

---

## 2. Entity

An **entity** is a real-world object that can be identified separately.

Examples:

```text
Student
Course
Faculty
Department
Employee
```

---

## 3. Attribute

An **attribute** describes a property of an entity.

Example:

```text
Student
├── StudentID
├── StudentName
├── DOB
└── Email
```

Types commonly discussed:

* Simple attribute
* Composite attribute
* Single-valued attribute
* Multi-valued attribute
* Derived attribute

---

## 4. Entity Set

An **entity set** is a collection of similar entities.

Example:

```text
Student
----------------
101 | Alice
102 | Bob
103 | Carol
```

All these student entities form the **Student entity set**.

---

## 5. Relationship

A **relationship** represents an association between entities.

Example:

```text
Student ─── Enrolls ─── Course
```

A student can enroll in a course.

---

## 6. Cardinality

Cardinality describes how many entities can participate in a relationship.

### One-to-One (1:1)

```text
Person ─── Passport
```

One person has one passport.

### One-to-Many (1:N)

```text
Department ─── Student
```

One department can have many students.

### Many-to-Many (M:N)

```text
Student ─── Course
```

A student can take many courses, and a course can have many students.

---

## 7. Specialization and Generalization

### Specialization

A superclass is divided into more specific subclasses.

```text
        Employee
        /      \
     Faculty   Staff
```

### Generalization

Multiple lower-level entities are combined into a higher-level entity.

```text
Faculty ─┐
         ├── Employee
Staff ───┘
```

---

## Key Takeaway

> The **ER model describes entities, their attributes, and relationships before implementing the database using tables.**
