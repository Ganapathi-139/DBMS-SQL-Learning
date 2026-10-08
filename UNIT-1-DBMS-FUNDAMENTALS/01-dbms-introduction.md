# DBMS Introduction

## 1. What is a Database?

A **database** is an organized collection of related data that can be stored, accessed, and managed efficiently.

**Example:**
A college database can store students, courses, faculty, departments, and enrollments.

---

## 2. What is DBMS?

**DBMS (Database Management System)** is software used to create, store, manage, retrieve, and control access to data in a database.

**Examples:**

* MySQL
* PostgreSQL
* Oracle Database
* Microsoft SQL Server

### Basic idea

```text
User / Application
        ↓
      DBMS
        ↓
    Database
```

---

## 3. Why Do We Need a DBMS?

A DBMS helps to:

* Store and organize large amounts of data
* Retrieve data efficiently
* Reduce unnecessary data duplication
* Maintain data consistency
* Provide security and access control
* Allow multiple users to access data
* Provide backup and recovery
* Maintain relationships between data

---

## 4. DBMS vs File System

| File System                               | DBMS                                  |
| ----------------------------------------- | ------------------------------------- |
| Data is stored in files                   | Data is managed through a database    |
| More data redundancy                      | Reduces redundancy                    |
| Limited security                          | Better access control                 |
| Difficult to manage relationships         | Supports relationships                |
| Limited concurrent access                 | Supports multiple users               |
| Recovery is usually application-dependent | Provides database recovery mechanisms |

---

## 5. Main Functions of a DBMS

A DBMS provides:

### Data Definition

Defines the structure of the database.

Example:

```sql
CREATE TABLE Student (
    StudentID INT,
    StudentName VARCHAR(100)
);
```

### Data Manipulation

Allows data to be inserted, modified, and deleted.

```sql
INSERT INTO Student VALUES (1, 'Alice');
```

### Data Retrieval

Allows users to retrieve required information.

```sql
SELECT * FROM Student;
```

### Security

Controls who can access or modify data.

### Transaction Management

Manages operations that should be completed reliably.

### Backup and Recovery

Helps restore data after failures.

---

## 6. Applications of DBMS

DBMSs are commonly used in:

* **Banking** — accounts and transactions
* **Education** — students, courses, and grades
* **Healthcare** — patients and medical records
* **E-commerce** — products, customers, and orders
* **Airline/Railway** — reservations and schedules
* **Business** — employees, sales, and inventory

---

## 7. Advantages of DBMS

* Reduced data redundancy
* Improved data consistency
* Better security
* Data sharing
* Data integrity
* Backup and recovery
* Concurrent access
* Easier data management

---

## 8. Key Terms

| Term         | Meaning                                                  |
| ------------ | -------------------------------------------------------- |
| **Database** | Organized collection of data                             |
| **DBMS**     | Software that manages databases                          |
| **Data**     | Raw facts or values                                      |
| **Metadata** | Data that describes other data                           |
| **Table**    | Collection of related data organized in rows and columns |
| **Query**    | Request to retrieve or manipulate data                   |

---

## 9. Simple Example

Consider a student database:

```text
Student
--------------------------------
StudentID | Name  | Department
--------------------------------
101       | Alice | CSE
102       | Bob   | ECE
103       | Carol | CSE
```

The DBMS allows us to:

* Add a student
* Find a student
* Update student information
* Delete a student
* Find all CSE students
* Control who can access the data

---

## Key Takeaway

> **DBMS is software that manages data in a database efficiently, securely, and reliably.**
