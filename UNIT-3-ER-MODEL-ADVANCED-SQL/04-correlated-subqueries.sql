-- UNIT III: Correlated Subqueries
-- A correlated subquery refers to a column
-- from the outer query.

-- =====================================================
-- SAMPLE TABLES
-- =====================================================

CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50)
);

CREATE TABLE Employee (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(100),
Salary DECIMAL(10,2),
DeptID INT,
FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

-- =====================================================
-- SAMPLE DATA
-- =====================================================

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

INSERT INTO Employee VALUES
(101, 'Rahul', 50000, 1),
(102, 'Priya', 60000, 1),
(103, 'Arun', 45000, 2),
(104, 'Anu', 70000, 3);

-- =====================================================
-- 1. BASIC CORRELATED SUBQUERY
-- =====================================================

-- Find employees whose salary is greater than
-- the average salary of their own department.

SELECT e.EmpID, e.EmpName, e.Salary, e.DeptID
FROM Employee e
WHERE e.Salary > (
SELECT AVG(e2.Salary)
FROM Employee e2
WHERE e2.DeptID = e.DeptID
);

-- =====================================================
-- HOW IT WORKS
-- =====================================================

-- Outer query:
-- Employee e
-------------

-- Inner query:
-- Employee e2
--------------

## -- The inner query uses:

## -- e2.DeptID = e.DeptID

-- Here, e.DeptID comes from the outer query.
-- Therefore, the subquery is correlated.

-- =====================================================
-- 2. FIND HIGHEST-PAID EMPLOYEE
--    IN EACH DEPARTMENT
-- =====================================================

SELECT e.EmpID, e.EmpName, e.Salary, e.DeptID
FROM Employee e
WHERE e.Salary = (
SELECT MAX(e2.Salary)
FROM Employee e2
WHERE e2.DeptID = e.DeptID
);

-- =====================================================
-- 3. CORRELATED SUBQUERY WITH EXISTS
-- =====================================================

-- Find departments that have an employee
-- earning more than 60000.

SELECT d.DeptID, d.DeptName
FROM Department d
WHERE EXISTS (
SELECT 1
FROM Employee e
WHERE e.DeptID = d.DeptID
AND e.Salary > 60000
);

-- =====================================================
-- NORMAL VS CORRELATED SUBQUERY
-- =====================================================

-- Normal subquery:
-- Inner query can usually execute independently.

-- Correlated subquery:
-- Inner query refers to the outer query.
-----------------------------------------

-- Example:
-- e2.DeptID = e.DeptID

-- =====================================================
-- EXAM TIP
-- =====================================================

## -- If the question says:

-- "Find employees whose salary is greater than
-- the average salary of their department."
-------------------------------------------

-- A correlated subquery is a useful approach.

-- =====================================================
-- KEY TAKEAWAY
-- =====================================================

-- Normal subquery:
-- Outer query ← independent inner query
----------------------------------------

-- Correlated subquery:
-- Outer query ← inner query refers to outer row
