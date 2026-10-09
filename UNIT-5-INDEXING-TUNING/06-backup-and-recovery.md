# Backup and Recovery

## 1. What is Backup?

A backup is a copy of database data kept separately so that it can be restored after data loss or failure.

---

## 2. Why Backup is Important?

Backups protect against:

* Hardware failure
* Software failure
* Accidental deletion
* Data corruption
* System crashes
* Other unexpected failures

---

## 3. Types of Backup

### Full Backup

Copies the complete database.

```text
Database → Complete Backup
```

It is simple to restore but may require more storage.

### Incremental Backup

Stores changes made since the previous backup.

It generally requires less storage than repeated full backups.

### Differential Backup

Stores changes made since the last full backup.

---

## 4. Recovery

Recovery is the process of restoring the database after a failure.

A simplified process:

```text
Failure
   ↓
Restore Backup
   ↓
Apply Required Changes
   ↓
Recover Database
```

---

## 5. Backup and Recovery Together

Backup protects a copy of the data.

Recovery uses backups and other recovery information to restore the database to a usable state.

---

## 6. Recovery Using Logs

A DBMS can maintain transaction logs.

Example:

```text
<T1 START>
<T1, Account1, old=5000, new=4000>
<T1 COMMIT>
```

Logs can help recover committed and incomplete transactions after a failure.

---

## 7. Point-in-Time Recovery

Point-in-time recovery attempts to restore a database to a specific point in time.

Example:

```text
10:00 → Backup
11:00 → Data inserted
12:00 → Data updated
13:00 → Accidental deletion
```

The database can potentially be restored to a point before the accidental deletion using available backups and logs.

---

## 8. Backup Strategy

A good backup strategy should consider:

* How often backups are required
* Where backups are stored
* How long backups are retained
* How quickly data must be restored
* Whether backups have been tested

---

## 9. Backup vs Recovery

| Backup                 | Recovery                     |
| ---------------------- | ---------------------------- |
| Creates a copy of data | Restores data after failure  |
| Preventive measure     | Corrective process           |
| Used for protection    | Used after data loss/failure |

---

## Key Takeaway

**Backup → Keep a safe copy**

**Recovery → Restore the database**

A database system should have both a reliable backup strategy and a tested recovery process.
