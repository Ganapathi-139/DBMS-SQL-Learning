# Data Models

## 1. What is a Data Model?

A **data model** is a collection of concepts used to describe the structure of a database, relationships, and constraints.

---

## 2. Relational Model

The **relational model** represents data using tables.

Example:

```text
Student
-------------------------
StudentID | Name | Major
-------------------------
101       | Alice| CSE
102       | Bob  | ECE
```

It is the foundation of SQL-based relational databases.

---

## 3. ER Model

The **Entity-Relationship (ER) model** represents:

* Entities
* Attributes
* Relationships

Example:

```text
Student ─── Enrolls ─── Course
```

It is commonly used during database design.

---

## 4. Object-Based Model

The **object-based model** represents data as objects containing data and associated operations.

It is useful when applications need object-oriented concepts.

---

## 5. Semi-Structured Model

Semi-structured data does not require every record to have exactly the same structure.

Common examples include:

```text
JSON
XML
```

Example:

```json
{
  "student_id": 101,
  "name": "Alice",
  "skills": ["SQL", "Python"]
}
```

---

## Comparison

| Model           | Basic Representation       |
| --------------- | -------------------------- |
| Relational      | Tables                     |
| ER              | Entities and relationships |
| Object-based    | Objects                    |
| Semi-structured | JSON/XML-like data         |

---

## Key Takeaway

> A **data model** provides a way to describe how data is organized and related.
