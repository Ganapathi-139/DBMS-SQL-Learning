-- UNIT III: Nested / Subqueries
-- A subquery is a SELECT query inside another query.

-- =====================================================
-- SAMPLE TABLES
-- =====================================================

CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50),
Location VARCHAR(50)
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
(1, 'IT', 'Hyderabad'),
(2, 'HR', 'Chennai'),
(3, 'Finance', 'Bangalore');

INSERT INTO Employee VALUES
(101, 'Rahul', 50000, 1),
(102, 'Priya', 60000, 1),
(103, 'Arun', 45000, 2),
(104, 'Anu', 70000, 3);

-- =====================================================
-- 1. BASIC SUBQUERY
-- =====================================================

-- Find employees who work in the IT department.

SELECT *
FROM Employee
WHERE DeptID = (
SELECT DeptID
FROM Department
WHERE DeptName = 'IT'
);

-- =====================================================
-- 2. SUBQUERY WITH IN
-- =====================================================

-- Find employees working in departments located
-- in Hyderabad or Chennai.

SELECT *
FROM Employee
WHERE DeptID IN (
SELECT DeptID
FROM Department
WHERE Location IN ('Hyderabad', 'Chennai')
);

-- =====================================================
-- 3. SUBQUERY WITH AVG()
-- =====================================================

-- Find employees earning more than the
-- average salary.

SELECT *
FROM Employee
WHERE Salary > (
SELECT AVG(Salary)
FROM Employee
);

-- =====================================================
-- 4. SUBQUERY WITH MAX()
-- =====================================================

-- Find employees having the highest salary.

SELECT *
FROM Employee
WHERE Salary = (
SELECT MAX(Salary)
FROM Employee
);

-- =====================================================
-- 5. SUBQUERY WITH EXISTS
-- =====================================================

-- Find departments that have at least one employee.

SELECT *
FROM Department d
WHERE EXISTS (
SELECT 1
FROM Employee e
WHERE e.DeptID = d.DeptID
);

-- =====================================================
-- IMPORTANT
-- =====================================================

-- Outer query = main query
-- Inner query = subquery
-------------------------

## -- A subquery is normally written inside parentheses.

-- Common operators:
-- =, >, <, IN, EXISTS, ANY, ALL

-- =====================================================
-- LAB EXAM PATTERN
-- =====================================================

-- "Find employees whose salary is greater than
-- the average salary."

SELECT EmpName, Salary
FROM Employee
WHERE Salary > (
SELECT AVG(Salary)
FROM Employee
);
