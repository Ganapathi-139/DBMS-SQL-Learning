-- UNIT III: SQL Joins
-- Joins combine rows from two or more tables.

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
(3, 'Finance'),
(4, 'Marketing');

INSERT INTO Employee VALUES
(101, 'Rahul', 50000, 1),
(102, 'Priya', 60000, 1),
(103, 'Arun', 45000, 2),
(104, 'Anu', 70000, 3);

-- =====================================================
-- 1. INNER JOIN
-- =====================================================

-- Returns only matching rows.

SELECT e.EmpName, d.DeptName
FROM Employee e
INNER JOIN Department d
ON e.DeptID = d.DeptID;

-- =====================================================
-- 2. EQUI JOIN
-- =====================================================

-- Join using the equality (=) condition.

SELECT e.EmpName, d.DeptName
FROM Employee e
JOIN Department d
ON e.DeptID = d.DeptID;

-- =====================================================
-- 3. LEFT JOIN
-- =====================================================

-- Returns all rows from the left table
-- and matching rows from the right table.

SELECT e.EmpName, d.DeptName
FROM Employee e
LEFT JOIN Department d
ON e.DeptID = d.DeptID;

-- =====================================================
-- 4. RIGHT JOIN
-- =====================================================

-- Returns all rows from the right table
-- and matching rows from the left table.

SELECT e.EmpName, d.DeptName
FROM Employee e
RIGHT JOIN Department d
ON e.DeptID = d.DeptID;

-- =====================================================
-- 5. FIND DEPARTMENTS WITH NO EMPLOYEES
-- =====================================================

SELECT d.DeptID, d.DeptName
FROM Department d
LEFT JOIN Employee e
ON d.DeptID = e.DeptID
WHERE e.EmpID IS NULL;

-- =====================================================
-- 6. NATURAL JOIN
-- =====================================================

-- Automatically joins tables using columns
-- having the same name.

SELECT *
FROM Employee
NATURAL JOIN Department;

-- =====================================================
-- 7. JOIN WITH WHERE
-- =====================================================

-- Find employees working in the IT department.

SELECT e.EmpName, e.Salary
FROM Employee e
INNER JOIN Department d
ON e.DeptID = d.DeptID
WHERE d.DeptName = 'IT';

-- =====================================================
-- 8. JOIN WITH ORDER BY
-- =====================================================

SELECT e.EmpName, d.DeptName, e.Salary
FROM Employee e
INNER JOIN Department d
ON e.DeptID = d.DeptID
ORDER BY e.Salary DESC;

-- =====================================================
-- JOIN TYPES
-- =====================================================

-- INNER JOIN  → Matching rows only
-- LEFT JOIN   → All left rows + matching right rows
-- RIGHT JOIN  → All right rows + matching left rows
-- NATURAL JOIN → Automatically matches same-named columns
-- EQUI JOIN   → Join using equality condition
-- OUTER JOIN  → Includes unmatched rows

-- =====================================================
-- EXAM PATTERN
-- =====================================================

-- Display employee names along with department names.

SELECT e.EmpName, d.DeptName
FROM Employee e
INNER JOIN Department d
ON e.DeptID = d.DeptID;
