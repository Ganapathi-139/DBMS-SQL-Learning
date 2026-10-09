-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: basic-queries.sql
-- PURPOSE: Basic SQL operations
-- =====================================================

USE OnlineShopping;

-- =====================================================
-- 1. DISPLAY ALL CUSTOMERS
-- =====================================================

SELECT * FROM CUSTOMER;

-- =====================================================
-- 2. DISPLAY ALL CATEGORIES
-- =====================================================

SELECT * FROM CATEGORY;

-- =====================================================
-- 3. DISPLAY ALL PRODUCTS
-- =====================================================

SELECT * FROM PRODUCT;

-- =====================================================
-- 4. DISPLAY ALL ORDERS
-- =====================================================

SELECT * FROM ORDERS;

-- =====================================================
-- 5. DISPLAY ALL PAYMENTS
-- =====================================================

SELECT * FROM PAYMENT;

-- =====================================================
-- 6. SELECT SPECIFIC COLUMNS
-- =====================================================

SELECT Product_ID, Product_Name, Price
FROM PRODUCT;

-- =====================================================
-- 7. PRODUCTS WITH PRICE GREATER THAN 2000
-- =====================================================

SELECT Product_ID, Product_Name, Price
FROM PRODUCT
WHERE Price > 2000;

-- =====================================================
-- 8. PRODUCTS WITH STOCK AVAILABLE
-- =====================================================

SELECT Product_ID, Product_Name, Stock
FROM PRODUCT
WHERE Stock > 0;

-- =====================================================
-- 9. CUSTOMERS WHOSE NAMES START WITH 'A'
-- =====================================================

SELECT *
FROM CUSTOMER
WHERE Name LIKE 'A%';

-- =====================================================
-- 10. PRODUCTS ORDERED BY PRICE
-- =====================================================

SELECT Product_ID, Product_Name, Price
FROM PRODUCT
ORDER BY Price ASC;

-- =====================================================
-- 11. PRODUCTS ORDERED BY PRICE, HIGHEST FIRST
-- =====================================================

SELECT Product_ID, Product_Name, Price
FROM PRODUCT
ORDER BY Price DESC;

-- =====================================================
-- 12. PRODUCTS WITH PRICE BETWEEN 1000 AND 3000
-- =====================================================

SELECT Product_ID, Product_Name, Price
FROM PRODUCT
WHERE Price BETWEEN 1000 AND 3000;

-- =====================================================
-- 13. UPDATE A PRODUCT PRICE
-- This changes the current price of P101.
-- Existing ORDER_ITEM prices are not changed.
-- =====================================================

UPDATE PRODUCT
SET Price = 2599.00
WHERE Product_ID = 'P101';

SELECT *
FROM PRODUCT
WHERE Product_ID = 'P101';

-- =====================================================
-- 14. SAFE TEST INSERT
-- Add a temporary customer with no orders.
-- =====================================================

INSERT INTO CUSTOMER
(Customer_ID, Name, Email, Phone, Address)
VALUES
('C106', 'Test Customer', '[test106@example.com](mailto:test106@example.com)',
'9000000106', 'Sample City');

SELECT *
FROM CUSTOMER
WHERE Customer_ID = 'C106';

-- =====================================================
-- 15. DELETE THE TEST CUSTOMER
-- Safe because this test customer has no orders.
-- =====================================================

DELETE FROM CUSTOMER
WHERE Customer_ID = 'C106';

SELECT *
FROM CUSTOMER
WHERE Customer_ID = 'C106';

-- =====================================================
-- 16. COUNT CUSTOMERS
-- =====================================================

SELECT COUNT(*) AS Total_Customers
FROM CUSTOMER;

-- =====================================================
-- 17. COUNT PRODUCTS
-- =====================================================

SELECT COUNT(*) AS Total_Products
FROM PRODUCT;

-- =====================================================
-- 18. TOTAL VALUE OF ALL ORDERS
-- =====================================================

SELECT SUM(Total_Amount) AS Total_Order_Value
FROM ORDERS;

-- =====================================================
-- 19. AVERAGE PRODUCT PRICE
-- =====================================================

SELECT AVG(Price) AS Average_Product_Price
FROM PRODUCT;

-- =====================================================
-- 20. LOWEST AND HIGHEST PRODUCT PRICE
-- =====================================================

SELECT
MIN(Price) AS Lowest_Product_Price,
MAX(Price) AS Highest_Product_Price
FROM PRODUCT;
