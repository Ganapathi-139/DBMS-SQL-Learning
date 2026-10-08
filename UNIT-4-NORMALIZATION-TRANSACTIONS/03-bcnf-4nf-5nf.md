# BCNF, 4NF and 5NF

## 1. BCNF

BCNF stands for **Boyce-Codd Normal Form**.

A relation is in BCNF if:

> Every determinant is a candidate key.

BCNF is stronger than 3NF.

### Simple Idea

If:

`A → B`

then `A` should be a candidate key.

If A is not a candidate key, the relation may violate BCNF.

---

## 2. 4NF

4NF stands for **Fourth Normal Form**.

It deals mainly with **multivalued dependencies**.

A table should not store two independent multi-valued facts about the same entity.

### Example

Suppose:

`Student →→ Hobby`

and

`Student →→ Language`

A student can have multiple hobbies and multiple languages independently.

Storing both in one table can create unnecessary combinations.

### Better Design

**StudentHobby**

`StudentID, Hobby`

**StudentLanguage**

`StudentID, Language`

---

## 3. 5NF

5NF stands for **Fifth Normal Form**.

It deals with **join dependencies**.

A relation is decomposed into smaller relations so that the original information can be reconstructed correctly through joins.

5NF is mainly useful for complex database designs.

---

## 4. Normal Forms at a Glance

| Normal Form | Main Purpose                                |
| ----------- | ------------------------------------------- |
| 1NF         | Atomic values                               |
| 2NF         | Remove partial dependency                   |
| 3NF         | Remove transitive dependency                |
| BCNF        | Every determinant is a candidate key        |
| 4NF         | Remove problematic multivalued dependencies |
| 5NF         | Handle join dependencies                    |

---

## Key Takeaway

For most practical database designs:

**1NF → 2NF → 3NF**

is the main normalization path.

BCNF, 4NF and 5NF are advanced forms used when the database has more complex dependencies.
