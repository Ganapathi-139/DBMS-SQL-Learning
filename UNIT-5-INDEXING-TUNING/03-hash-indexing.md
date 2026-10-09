# Hash Indexing

## 1. What is Hash Indexing?

Hash indexing uses a **hash function** to determine where an index entry should be stored.

The basic idea is:

```text
Search Key
    ↓
Hash Function
    ↓
Bucket
    ↓
Record
```

---

## 2. Hash Function

A hash function converts a search key into a bucket number.

Example:

```text
h(key) = key MOD 10
```

For:

```text
key = 25
```

```text
25 MOD 10 = 5
```

So the key can be placed in bucket 5.

---

## 3. Buckets

A bucket is a storage location that contains records or index entries having related hash values.

Example:

```text
Bucket 0 → Records
Bucket 1 → Records
Bucket 2 → Records
...
Bucket 9 → Records
```

---

## 4. Collision

A collision occurs when two different keys produce the same hash value.

Example:

```text
25 MOD 10 = 5
35 MOD 10 = 5
```

Both values map to bucket 5.

The DBMS needs a method to handle collisions.

---

## 5. Collision Handling

Common approaches include:

### Chaining

Multiple entries can be stored in a bucket using a linked structure.

```text
Bucket 5
   ↓
25 → 35 → 45
```

### Overflow Area

Additional storage can be used when a bucket becomes full.

---

## 6. Static Hashing

In static hashing, the number of buckets is fixed.

Example:

```text
10 buckets
```

The bucket structure does not automatically grow with the database.

---

## 7. Dynamic Hashing

Dynamic hashing allows the number of buckets to change as data grows.

It is useful for databases where the amount of data changes significantly.

---

## 8. Advantages

Hash indexing is useful for:

* Equality searches
* Fast exact-match lookups
* Direct access to a bucket

Example:

```sql
SELECT *
FROM Student
WHERE StudentID = 101;
```

---

## 9. Limitations

Hash indexing is generally not ideal for range queries such as:

```sql
WHERE StudentID BETWEEN 100 AND 200
```

A tree-based index such as a B+ Tree is usually better for ordered and range-based searches.

---

## 10. Hash vs B+ Tree

| Feature         | Hash Index   | B+ Tree       |
| --------------- | ------------ | ------------- |
| Equality search | Excellent    | Good          |
| Range search    | Poor         | Excellent     |
| Sorted access   | No           | Yes           |
| Structure       | Hash buckets | Balanced tree |

---

## Key Takeaway

**Hash indexing → Best suited for exact-match searches.**

**B+ Tree → Better for ordered and range searches.**
