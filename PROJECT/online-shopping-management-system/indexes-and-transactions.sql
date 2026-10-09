-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: indexes-and-transactions.sql
-- PURPOSE: Indexes, query analysis, and transactions
-- =====================================================

USE OnlineShopping;

-- =====================================================
-- 1. CREATE AN INDEX ON PRODUCT NAME
-- Run each CREATE INDEX statement only once.
-- =====================================================

CREATE INDEX idx_product_name
ON PRODUCT(Product_Name);

-- =====================================================
-- 2. CREATE AN INDEX ON ORDER DATE
-- =====================================================

CREATE INDEX idx_orders_date
ON ORDERS(Order_Date);

-- =====================================================
-- 3. DISPLAY PRODUCT TABLE INDEXES
-- =====================================================

SHOW INDEX FROM PRODUCT;

-- =====================================================
-- 4. DISPLAY ORDER TABLE INDEXES
-- =====================================================

SHOW INDEX FROM ORDERS;

-- =====================================================
-- 5. USE EXPLAIN TO ANALYZE A PRODUCT SEARCH
-- EXPLAIN shows how MySQL plans to execute the query.
-- =====================================================

EXPLAIN
SELECT Product_ID, Product_Name, Price
FROM PRODUCT
WHERE Product_Name = 'Wireless Headphones';

-- =====================================================
-- 6. USE EXPLAIN TO ANALYZE ORDERS BY DATE
-- =====================================================

EXPLAIN
SELECT Order_ID, Customer_ID, Order_Date, Total_Amount
FROM ORDERS
WHERE Order_Date >= '2026-01-01'
ORDER BY Order_Date;

-- =====================================================
-- 7. TRANSACTION: REDUCE PRODUCT STOCK
-- This example reduces P101 stock by one unit.
-- =====================================================

START TRANSACTION;

UPDATE PRODUCT
SET Stock = Stock - 1
WHERE Product_ID = 'P101'
AND Stock > 0;

-- Check the updated stock before deciding what to do.
SELECT Product_ID, Product_Name, Stock
FROM PRODUCT
WHERE Product_ID = 'P101';

-- IMPORTANT:
-- Run ONE of the following commands after checking the result.
---------------------------------------------------------------

-- COMMIT;
-- Saves the change permanently.
--------------------------------

-- ROLLBACK;
-- Cancels the change made in this transaction.
-----------------------------------------------

-- Do not execute both commands for the same transaction.

-- =====================================================
-- 8. TRANSACTION EXAMPLE: UPDATE AND ROLLBACK
-- This example demonstrates how to cancel a change.
-- Run this section separately from the transaction above.
-- =====================================================

## -- START TRANSACTION;

-- UPDATE PRODUCT
-- SET Price = Price + 100
-- WHERE Product_ID = 'P102';
-----------------------------

-- SELECT Product_ID, Product_Name, Price
-- FROM PRODUCT
-- WHERE Product_ID = 'P102';
-----------------------------

## -- ROLLBACK;

-- SELECT Product_ID, Product_Name, Price
-- FROM PRODUCT
-- WHERE Product_ID = 'P102';

-- =====================================================
-- 9. VERIFY CURRENT PRODUCT STOCK
-- =====================================================

SELECT Product_ID, Product_Name, Stock
FROM PRODUCT
ORDER BY Product_ID;

-- =====================================================
-- 10. VERIFY CURRENT ORDER TOTALS
-- =====================================================

SELECT Order_ID, Order_Date, Total_Amount
FROM ORDERS
ORDER BY Order_Date;
