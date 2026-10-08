-- UNIT III: Relationships and Constraints
-- Basic SQL examples for related tables

-- =====================================================
-- 1. CREATE TABLES WITH PRIMARY AND FOREIGN KEYS
-- =====================================================

CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50) NOT NULL
);

CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(100) NOT NULL,
DeptID INT,
FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

-- =====================================================
-- 2. INSERT PARENT TABLE FIRST
-- =====================================================

INSERT INTO Department (DeptID, DeptName)
VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Electronics');

-- =====================================================
-- 3. INSERT CHILD TABLE
-- =====================================================

INSERT INTO Student (StudentID, StudentName, DeptID)
VALUES
(101, 'Rahul', 1),
(102, 'Priya', 1),
(103, 'Arun', 2);

-- =====================================================
-- 4. REFERENTIAL INTEGRITY
-- =====================================================

-- DeptID 1 exists in Department, so this is valid.
INSERT INTO Student (StudentID, StudentName, DeptID)
VALUES (104, 'Anu', 1);

-- DeptID 99 does not exist in Department.
-- This will normally fail because of the foreign key.
-- INSERT INTO Student VALUES (105, 'Ravi', 99);

-- =====================================================
-- 5. ON DELETE CASCADE
-- =====================================================

CREATE TABLE Enrollment (
EnrollmentID INT PRIMARY KEY,
StudentID INT,
CourseID INT,
FOREIGN KEY (StudentID)
REFERENCES Student(StudentID)
ON DELETE CASCADE
);

-- If a Student is deleted, related Enrollment rows
-- can also be deleted automatically when CASCADE is used.

-- =====================================================
-- IMPORTANT CONSTRAINTS
-- =====================================================

-- PRIMARY KEY
-- Uniquely identifies each row.

-- FOREIGN KEY
-- Connects one table with another table.

-- NOT NULL
-- Prevents NULL values.

-- UNIQUE
-- Prevents duplicate values.

-- CHECK
-- Restricts values based on a condition.

-- DEFAULT
-- Provides a value when none is supplied.

-- =====================================================
-- KEY IDEA
-- =====================================================

-- Parent table  → Department
-- Child table   → Student
-- Foreign key   → Student.DeptID
-- Referenced key → Department.DeptID
