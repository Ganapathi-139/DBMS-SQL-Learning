# Recovery

## 1. What is Database Recovery?

Database recovery is the process of restoring the database to a consistent state after a failure.

Failures may include:

* Transaction failure
* System crash
* Power failure
* Hardware failure
* Software failure

---

## 2. Recoverability

A transaction schedule should allow the database to recover correctly after failures.

A transaction should not permanently depend on uncommitted data from another transaction.

---

## 3. Storage and Recovery

A DBMS uses storage and recovery mechanisms to protect database information.

Important concepts include:

* Database files
* Buffer/main memory
* Stable storage
* Log files
* Backup copies

---

## 4. Log-Based Recovery

A DBMS can maintain a log of transaction operations.

Example:

```text
<T1 START>

<T1, Account1, old=5000, new=4000>

<T1 COMMIT>
```

The log helps the DBMS determine what operations need to be undone or redone after a failure.

---

## 5. UNDO

UNDO reverses changes made by a transaction.

Example:

```text
Old Balance = 5000
New Balance = 4000
```

If the transaction fails before committing, recovery can restore:

```text
Balance = 5000
```

---

## 6. REDO

REDO reapplies changes made by a committed transaction when necessary.

Example:

```text
Old Balance = 5000
New Balance = 4000
```

If the transaction committed but the updated data was not safely written before a crash, recovery can apply the change again.

---

## 7. Backup and Recovery

A backup is a copy of database data that can be used to restore the database after a serious failure.

Common approach:

```text
Database
   ↓
Backup
   ↓
Failure
   ↓
Restore
   ↓
Recover
```

---

## 8. Atomicity and Recovery

Recovery supports the **Atomicity** property of transactions.

If a transaction fails:

```text
Complete transaction
        OR
No incomplete changes
```

The database should not remain in an inconsistent intermediate state.

---

## 9. Recovery Summary

| Concept        | Purpose                                    |
| -------------- | ------------------------------------------ |
| Recovery       | Restore database after failure             |
| Log            | Records transaction operations             |
| UNDO           | Reverse incomplete changes                 |
| REDO           | Reapply required committed changes         |
| Backup         | Provides a copy for restoration            |
| Recoverability | Ensures transactions can recover correctly |

---

## Key Takeaway

Remember:

**Recovery → Restore consistency after failure**

**UNDO → Reverse changes**

**REDO → Reapply changes**

**Backup → Restore data after serious failure**
