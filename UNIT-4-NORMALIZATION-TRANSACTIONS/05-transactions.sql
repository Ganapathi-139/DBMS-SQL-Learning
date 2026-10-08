-- UNIT IV: Transactions
-- A transaction is a logical unit of database work.

-- =====================================================
-- 1. START A TRANSACTION
-- =====================================================

START TRANSACTION;

-- =====================================================
-- 2. UPDATE DATA
-- =====================================================

UPDATE Employee
SET Salary = Salary + 5000
WHERE EmpID = 101;

-- =====================================================
-- 3. COMMIT
-- =====================================================

-- Makes the changes permanent.

COMMIT;

-- =====================================================
-- 4. ROLLBACK
-- =====================================================

START TRANSACTION;

UPDATE Employee
SET Salary = Salary + 10000
WHERE EmpID = 101;

-- Cancel the changes.
ROLLBACK;

-- =====================================================
-- 5. SAVEPOINT
-- =====================================================

START TRANSACTION;

UPDATE Employee
SET Salary = Salary + 5000
WHERE EmpID = 101;

SAVEPOINT salary_update;

UPDATE Employee
SET Salary = Salary + 3000
WHERE EmpID = 102;

-- Roll back only the changes after the savepoint.

ROLLBACK TO SAVEPOINT salary_update;

COMMIT;

-- =====================================================
-- 6. RELEASE SAVEPOINT
-- =====================================================

START TRANSACTION;

UPDATE Employee
SET Salary = Salary + 2000
WHERE EmpID = 101;

SAVEPOINT sp1;

-- Remove the savepoint.
RELEASE SAVEPOINT sp1;

COMMIT;

-- =====================================================
-- TRANSACTION COMMANDS
-- =====================================================

-- START TRANSACTION
-- Begins a transaction.

-- COMMIT
-- Permanently saves changes.

-- ROLLBACK
-- Cancels transaction changes.

-- SAVEPOINT
-- Creates a point inside a transaction.

-- ROLLBACK TO SAVEPOINT
-- Returns to a particular savepoint.

-- RELEASE SAVEPOINT
-- Removes a savepoint.

-- =====================================================
-- ACID PROPERTIES
-- =====================================================

-- A = Atomicity
-- Transaction happens completely or not at all.

-- C = Consistency
-- Database remains valid before and after transaction.

-- I = Isolation
-- Concurrent transactions should not interfere incorrectly.

-- D = Durability
-- Committed changes are preserved.

-- =====================================================
-- EXAM EXAMPLE
-- =====================================================

START TRANSACTION;

UPDATE Account
SET Balance = Balance - 1000
WHERE AccountID = 1;

UPDATE Account
SET Balance = Balance + 1000
WHERE AccountID = 2;

COMMIT;

-- If something goes wrong before COMMIT:
-- ROLLBACK;
