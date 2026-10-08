-- UNIT III: SQL Set Operations
-- Set operations combine the results of SELECT queries.

-- =====================================================
-- SAMPLE TABLES
-- =====================================================

CREATE TABLE CS_Students (
StudentID INT,
StudentName VARCHAR(100)
);

CREATE TABLE IT_Students (
StudentID INT,
StudentName VARCHAR(100)
);

INSERT INTO CS_Students VALUES
(101, 'Rahul'),
(102, 'Priya'),
(103, 'Arun');

INSERT INTO IT_Students VALUES
(103, 'Arun'),
(104, 'Anu'),
(105, 'Ravi');

-- =====================================================
-- 1. UNION
-- =====================================================

-- Combines results and removes duplicate rows.

SELECT StudentID, StudentName
FROM CS_Students

UNION

SELECT StudentID, StudentName
FROM IT_Students;

-- =====================================================
-- 2. UNION ALL
-- =====================================================

-- Combines results but keeps duplicates.

SELECT StudentID, StudentName
FROM CS_Students

UNION ALL

SELECT StudentID, StudentName
FROM IT_Students;

-- =====================================================
-- 3. INTERSECTION
-- =====================================================

-- Returns rows common to both queries.

SELECT StudentID, StudentName
FROM CS_Students

INTERSECT

SELECT StudentID, StudentName
FROM IT_Students;

-- =====================================================
-- 4. SET DIFFERENCE
-- =====================================================

-- Returns rows present in the first query
-- but not in the second query.

SELECT StudentID, StudentName
FROM CS_Students

EXCEPT

SELECT StudentID, StudentName
FROM IT_Students;

-- =====================================================
-- IMPORTANT REQUIREMENT
-- =====================================================

## -- The queries used in set operations should have:

-- 1. Same number of columns
-- 2. Compatible data types
---------------------------

## -- Example:

-- SELECT StudentID, StudentName FROM CS_Students
-- UNION
-- SELECT StudentID, StudentName FROM IT_Students;

-- =====================================================
-- UNION vs UNION ALL
-- =====================================================

-- UNION
--     Removes duplicates.

-- UNION ALL
--     Keeps duplicates.

-- =====================================================
-- SET OPERATIONS SUMMARY
-- =====================================================

-- UNION
-- A ∪ B
-- All rows from A and B.

-- INTERSECT
-- A ∩ B
-- Rows common to A and B.

-- EXCEPT
-- A - B
-- Rows in A but not in B.

-- =====================================================
-- EXAM PATTERNS
-- =====================================================

-- Students in either CS or IT:

SELECT StudentID, StudentName
FROM CS_Students

UNION

SELECT StudentID, StudentName
FROM IT_Students;

-- Students present in both CS and IT:

SELECT StudentID, StudentName
FROM CS_Students

INTERSECT

SELECT StudentID, StudentName
FROM IT_Students;

-- Students in CS but not IT:

SELECT StudentID, StudentName
FROM CS_Students

EXCEPT

SELECT StudentID, StudentName
FROM IT_Students;
