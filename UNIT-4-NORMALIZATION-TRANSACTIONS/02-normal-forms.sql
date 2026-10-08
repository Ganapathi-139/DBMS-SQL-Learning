-- UNIT IV: Normal Forms
-- Examples of 1NF, 2NF and 3NF

-- =====================================================
-- 1. FIRST NORMAL FORM (1NF)
-- =====================================================

-- A table is in 1NF when:
-- 1. Each column contains atomic values.
-- 2. There are no repeating groups.
------------------------------------

## -- BAD EXAMPLE:

-- StudentID | StudentName | Courses
-- 101       | Rahul       | DBMS, OS
-------------------------------------

-- Courses contains multiple values.

-- BETTER DESIGN:

CREATE TABLE StudentCourse (
StudentID INT,
StudentName VARCHAR(100),
CourseName VARCHAR(100)
);

INSERT INTO StudentCourse VALUES
(101, 'Rahul', 'DBMS'),
(101, 'Rahul', 'Operating Systems'),
(102, 'Priya', 'DBMS');

-- Each cell now contains one value.

-- =====================================================
-- 2. SECOND NORMAL FORM (2NF)
-- =====================================================

-- A table is in 2NF when:
-- 1. It is already in 1NF.
-- 2. There is no partial dependency.
-------------------------------------

## -- Example:

-- StudentID + CourseID → Grade
-- StudentID → StudentName
--------------------------

-- StudentName depends only on StudentID.
-- Therefore, it is a partial dependency.

-- BETTER DESIGN:

CREATE TABLE Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(100)
);

CREATE TABLE Enrollment (
StudentID INT,
CourseID INT,
Grade VARCHAR(5),
PRIMARY KEY (StudentID, CourseID),
FOREIGN KEY (StudentID)
REFERENCES Student(StudentID)
);

-- =====================================================
-- 3. THIRD NORMAL FORM (3NF)
-- =====================================================

-- A table is in 3NF when:
-- 1. It is in 2NF.
-- 2. It has no transitive dependency.
--------------------------------------

## -- Example:

-- StudentID → DeptID
-- DeptID → DeptName
--------------------

-- Therefore:
-- StudentID → DeptName
-----------------------

-- DeptName should be moved to Department.

CREATE TABLE Department (
DeptID INT PRIMARY KEY,
DeptName VARCHAR(100)
);

CREATE TABLE Student3NF (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(100),
DeptID INT,
FOREIGN KEY (DeptID)
REFERENCES Department(DeptID)
);

-- =====================================================
-- NORMALIZATION SUMMARY
-- =====================================================

-- 1NF:
-- Remove repeating groups / make values atomic.

-- 2NF:
-- Remove partial dependencies.

-- 3NF:
-- Remove transitive dependencies.

-- =====================================================
-- EXAM TIP
-- =====================================================

-- 1NF → Atomic values
-- 2NF → No partial dependency
-- 3NF → No transitive dependency
