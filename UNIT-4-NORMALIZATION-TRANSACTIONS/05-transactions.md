# Transactions

## 1. What is a Transaction?

A transaction is a logical unit of database operations that should be completed as a whole.

Example: Bank transfer

```text
Account A → Withdraw ₹1000
Account B → Deposit ₹1000
```

Both operations should succeed together.

---

## 2. ACID Properties

Transactions follow the **ACID** properties.

### Atomicity

A transaction is completed completely or not at all.

### Consistency

A transaction takes the database from one valid state to another valid state.

### Isolation

Concurrent transactions should not interfere incorrectly with each other.

### Durability

Once a transaction is committed, its changes should remain even after a system failure.

---

## 3. Transaction States

A transaction can move through several states:

```text
Active
  ↓
Partially Committed
  ↓
Committed
```

If a failure occurs:

```text
Active
  ↓
Failed
  ↓
Aborted
```

### Active

The transaction is currently executing.

### Partially Committed

The final operation has executed, but the changes are not yet permanently stored.

### Committed

The transaction completed successfully.

### Failed

The transaction cannot continue because of an error.

### Aborted

The transaction has been rolled back.

---

## 4. Concurrent Execution

Multiple transactions may execute at the same time.

Example:

```text
T1: Read → Write
T2: Read → Write
```

Concurrent execution can improve performance, but the DBMS must ensure correctness.

---

## 5. Serial Schedule

Transactions execute one after another.

```text
T1 → T2
```

T1 completes before T2 starts.

---

## 6. Concurrent Schedule

Operations of multiple transactions can be interleaved.

```text
T1 → T2 → T1 → T2
```

This can improve system performance.

---

## 7. Serializability

A concurrent schedule is **serializable** if its final result is equivalent to a correct serial execution.

The goal is:

> Get the performance benefits of concurrency while maintaining correctness.

---

## 8. Transaction Commands

Common SQL transaction commands include:

```sql
START TRANSACTION;

UPDATE Account
SET Balance = Balance - 1000
WHERE AccountID = 1;

COMMIT;
```

To cancel changes:

```sql
ROLLBACK;
```

To create a point inside a transaction:

```sql
SAVEPOINT sp1;
```

To return to that point:

```sql
ROLLBACK TO SAVEPOINT sp1;
```

---

## Key Takeaway

Remember:

**Transaction → Logical unit of work**

**ACID → Atomicity, Consistency, Isolation, Durability**

**Serializability → Correctness of concurrent execution**
