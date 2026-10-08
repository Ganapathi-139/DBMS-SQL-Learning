# Database Types and Architectures

## 1. Centralized Database

A **centralized database** stores and manages data at a single central location.

```text
Users
 ↓ ↓ ↓
Central Database
```

### Advantage

* Easier centralized management

### Limitation

* Failure of the central system can affect all users

---

## 2. Client-Server Architecture

In a **client-server database system**, clients request services from a database server.

```text
Client ──┐
Client ──┼──→ Database Server
Client ──┘
```

The server manages database operations while clients interact with the application.

---

## 3. Distributed Database

A **distributed database** stores data across multiple locations connected through a network.

```text
Site A ←→ Site B ←→ Site C
```

The data may be distributed while appearing as a single database to users.

---

## 4. Parallel Database

A **parallel database** uses multiple processors or storage resources to perform database operations simultaneously.

It can improve performance for large workloads.

---

## 5. Specialty Databases

### Spatial Database

Stores and manages location-based or geometric data.

**Example:** Maps and geographic information.

### Temporal Database

Stores data related to **time**.

**Example:** Historical employee salary records.

### Multimedia Database

Stores multimedia data such as:

* Images
* Audio
* Video

### NoSQL Database

**NoSQL databases** are non-relational databases designed for flexible data models and large-scale applications.

Examples of data models include:

* Document
* Key-value
* Graph
* Column-family

---

## Quick Comparison

| Type          | Main Idea                                            |
| ------------- | ---------------------------------------------------- |
| Centralized   | Data at one central location                         |
| Client-Server | Clients communicate with a database server           |
| Distributed   | Data across multiple locations                       |
| Parallel      | Multiple resources process operations simultaneously |
| Spatial       | Geographic/location data                             |
| Temporal      | Time-related data                                    |
| Multimedia    | Multimedia data                                      |
| NoSQL         | Flexible non-relational data                         |

---

## Key Takeaway

> Database architecture determines **where data is stored and how users/applications access it**.
