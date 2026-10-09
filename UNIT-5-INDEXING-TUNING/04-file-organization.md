# File Organization

## 1. What is File Organization?

File organization describes how records are physically arranged in storage.

The choice of file organization affects:

* Search performance
* Insert performance
* Delete performance
* Storage efficiency

---

## 2. Heap File Organization

Records are stored in no particular order.

```text
Record 1
Record 2
Record 3
Record 4
```

### Advantages

* Simple
* Fast insertion
* Easy to maintain

### Disadvantage

Searching may require scanning many records.

---

## 3. Sequential File Organization

Records are stored in a particular order, usually based on a key.

Example:

```text
101
102
103
104
105
```

### Advantages

* Efficient sequential access
* Useful for ordered processing

### Disadvantages

* Insertions can be expensive
* Maintaining order can require additional work

---

## 4. Hashed File Organization

A hash function determines where records are stored.

```text
Key
 ↓
Hash Function
 ↓
Bucket
```

It is useful for fast equality searches.

---

## 5. Indexed File Organization

An index is maintained to locate records efficiently.

```text
Index
 ↓
Record Location
 ↓
Data
```

This reduces the amount of data that must be searched.

---

## 6. Clustered Organization

Related records are stored close together according to the clustering arrangement.

This can improve access when related records are frequently retrieved together.

---

## 7. Comparison

| Organization | Best Use                      |
| ------------ | ----------------------------- |
| Heap         | Fast insertion                |
| Sequential   | Ordered/sequential processing |
| Hash         | Exact-match search            |
| Indexed      | Fast searching                |
| Clustered    | Related data access           |

---

## 8. Choosing File Organization

The choice depends on the workload.

### Frequent INSERT

Heap organization can be useful.

### Frequent Equality Search

Hash-based organization can be useful.

### Range Queries

Sequential or tree-based indexing is generally more suitable.

### Frequent Related-Record Access

Clustered organization can be useful.

---

## Key Takeaway

There is no single best file organization.

Choose the organization according to:

**How the database stores, searches, inserts, updates, and deletes data.**
