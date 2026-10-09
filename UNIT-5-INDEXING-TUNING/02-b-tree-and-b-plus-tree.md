# B-Tree and B+ Tree

## 1. What is a B-Tree?

A B-Tree is a balanced tree data structure commonly used for indexing.

It keeps data organized so that searching, insertion, and deletion can be performed efficiently.

---

## 2. Properties of B-Tree

A B-Tree:

* Is balanced
* Can have multiple children per node
* Keeps keys sorted
* Reduces the number of disk accesses
* Supports search, insertion, and deletion

---

## 3. B+ Tree

A B+ Tree is a variation of the B-Tree and is widely used for database indexing.

In a B+ Tree:

* Internal nodes mainly contain keys
* Actual record pointers/data are stored at leaf nodes
* Leaf nodes are linked
* Searching is efficient
* Range queries are efficient

---

## 4. Simple Structure

```text
             [30 | 60]
            /    |    \
           /     |     \
     [10 20] [40 50] [70 80]
```

In a B+ Tree, the leaf nodes are linked:

```text
[10 20] → [40 50] → [70 80]
```

This makes sequential and range access efficient.

---

## 5. Searching

To search for a value:

1. Start at the root.
2. Compare the search value with keys.
3. Follow the appropriate child.
4. Continue until reaching the leaf.
5. Find the required record.

---

## 6. Insertion

When inserting a key:

1. Find the correct leaf.
2. Insert the key in sorted order.
3. If the node becomes full, split it.
4. Update the parent.

Example:

```text
Before:
[10 20 30]

Insert 25

After split:
[10 20]   [25 30]
```

The exact split depends on the tree order.

---

## 7. Deletion

When deleting a key:

1. Find the key.
2. Remove it from the appropriate node.
3. If the node has too few keys, redistribution or merging may occur.
4. Update the tree if necessary.

---

## 8. Why B+ Trees are Useful

B+ Trees are useful because:

* They remain balanced.
* They reduce disk I/O.
* They support fast searching.
* They are efficient for range queries.
* Leaf nodes are linked for sequential access.

---

## 9. B-Tree vs B+ Tree

| Feature                | B-Tree     | B+ Tree     |
| ---------------------- | ---------- | ----------- |
| Data in internal nodes | Possible   | Usually no  |
| Data in leaf nodes     | Yes        | Yes         |
| Leaf nodes linked      | Usually no | Yes         |
| Range queries          | Good       | Very good   |
| Database indexing      | Used       | Very common |

---

## Key Takeaway

**B-Tree → Balanced multi-way search tree**

**B+ Tree → Data/record pointers at leaves + linked leaves**

For database indexing, **B+ Trees are especially important for range searches**.
