# Concurrency and Recovery

## 1. Concurrent Execution

Concurrency means multiple transactions are executed at the same time or their operations are interleaved.

### Example

Two transactions access the same bank account:

**Transaction T1**

* Read balance
* Withdraw ₹1000
* Write balance

**Transaction T2**

* Read balance
* Deposit ₹500
* Write balance

If operations are not controlled properly, incorrect results can occur.

---

## 2. Serial Schedule

Transactions execute one after another.

Example:

`T1 → T2`

T1 completes before T2 starts.

This is simple and safe but may reduce performance.

---

## 3. Concurrent Schedule

Operations of transactions are interleaved.

Example:

`T1 → T2 → T1 → T2`

This can improve performance but requires concurrency control.

---

## 4. Serializability

A schedule is serializable if its final result is equivalent to some serial execution of the transactions.

The main goal is:

**Concurrent execution should produce a correct result.**

---

## 5. Recoverability

A schedule should allow the database to recover correctly if a transaction fails.

A transaction should not permanently depend on data written by another transaction that has not yet committed.

---

## 6. Transaction States

A transaction can move through states such as:

```text
Active
  ↓
Partially Committed
  ↓
Committed
```

If an error occurs:

```text
Active
  ↓
Failed
  ↓
Aborted
```

---

## 7. Recovery

Recovery restores the database to a consistent state after failures.

Failures may include:

* Transaction failure
* System crash
* Power failure
* Hardware failure
* Software failure

---

## 8. Log-Based Recovery

A DBMS can maintain a log of database operations.

A simplified log may look like:

```text
<T1 START>
<T1, Account1, old=5000, new=4000>
<T1 COMMIT>
```

The log can help the DBMS determine what changes need to be redone or undone.

---

## 9. UNDO and REDO

### UNDO

Reverse changes made by an incomplete or failed transaction.

### REDO

Reapply changes from a committed transaction when necessary during recovery.

---

## 10. Atomicity and Recovery

Recovery supports the ACID property of **Atomicity**.

If a transaction fails:

**Either all required changes are completed, or incomplete changes are undone.**

---

## Key Takeaway

Remember:

**Concurrency → Multiple transactions**

**Serializability → Correct concurrent result**

**Recovery → Restore database after failure**

**UNDO → Reverse changes**

**REDO → Reapply changes**
