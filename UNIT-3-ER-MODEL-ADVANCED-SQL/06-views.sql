-- UNIT III: SQL Views
-- A view is a virtual table based on a SELECT query.

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
DeptID INT
);

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
-- 1. CREATE A SIMPLE VIEW
-- =====================================================

CREATE VIEW EmployeeView AS
SELECT EmpID, EmpName, Salary
FROM Employee;

-- =====================================================
-- 2. DISPLAY A VIEW
-- =====================================================

SELECT *
FROM EmployeeView;

-- =====================================================
-- 3. VIEW WITH WHERE CONDITION
-- =====================================================

CREATE VIEW HighSalaryEmployees AS
SELECT EmpID, EmpName, Salary
FROM Employee
WHERE Salary > 55000;

SELECT *
FROM HighSalaryEmployees;

-- =====================================================
-- 4. VIEW USING JOIN
-- =====================================================

CREATE VIEW EmployeeDepartmentView AS
SELECT
e.EmpID,
e.EmpName,
e.Salary,
d.DeptName
FROM Employee e
INNER JOIN Department d
ON e.DeptID = d.DeptID;

SELECT *
FROM EmployeeDepartmentView;

-- =====================================================
-- 5. UPDATE THROUGH A SIMPLE VIEW
-- =====================================================

-- This can be possible when the view is updatable.

UPDATE EmployeeView
SET Salary = 55000
WHERE EmpID = 101;

-- =====================================================
-- 6. DROP VIEW
-- =====================================================

DROP VIEW EmployeeView;

-- =====================================================
-- UPDATABLE VS NON-UPDATABLE VIEW
-- =====================================================

-- Updatable View:
-- Usually based on a single table and does not
-- contain operations that prevent direct modification.

-- Non-updatable View:
-- May contain joins, grouping, aggregate functions,
-- DISTINCT, or other complex operations.

-- =====================================================
-- ADVANTAGES OF VIEWS
-- =====================================================

-- 1. Simplifies complex queries.
-- 2. Can hide unnecessary columns.
-- 3. Provides an additional security layer.
-- 4. Makes frequently used queries easier to access.

-- =====================================================
-- KEY TAKEAWAY
-- =====================================================

-- Table → Stores actual data.
-- View  → Stores a query and presents its result
--          like a virtual table.
