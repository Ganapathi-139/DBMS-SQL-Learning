-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: joins-and-aggregates.sql
-- PURPOSE: Joins and aggregate queries
-- =====================================================

USE OnlineShopping;

-- =====================================================
-- 1. DISPLAY CUSTOMERS AND THEIR ORDERS
-- INNER JOIN returns customers who have matching orders.
-- =====================================================

SELECT
C.Customer_ID,
C.Name AS Customer_Name,
O.Order_ID,
O.Order_Date,
O.Total_Amount
FROM CUSTOMER C
INNER JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID
ORDER BY O.Order_Date;

-- =====================================================
-- 2. DISPLAY ORDER ITEMS WITH PRODUCT DETAILS
-- Line_Total = quantity multiplied by recorded unit price.
-- =====================================================

SELECT
OI.Order_Item_ID,
OI.Order_ID,
P.Product_ID,
P.Product_Name,
OI.Quantity,
OI.Price AS Unit_Price,
(OI.Quantity * OI.Price) AS Line_Total
FROM ORDER_ITEM OI
INNER JOIN PRODUCT P
ON OI.Product_ID = P.Product_ID
ORDER BY OI.Order_ID;

-- =====================================================
-- 3. DISPLAY PRODUCTS WITH CATEGORY NAMES
-- LEFT JOIN also includes products without a category.
-- =====================================================

SELECT
P.Product_ID,
P.Product_Name,
P.Price,
P.Stock,
C.Category_Name
FROM PRODUCT P
LEFT JOIN CATEGORY C
ON P.Category_ID = C.Category_ID
ORDER BY P.Product_Name;

-- =====================================================
-- 4. TOTAL ORDER VALUE PER CUSTOMER
-- Customers without orders are also included.
-- =====================================================

SELECT
C.Customer_ID,
C.Name AS Customer_Name,
COALESCE(SUM(O.Total_Amount), 0) AS Total_Order_Value
FROM CUSTOMER C
LEFT JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Name
ORDER BY Total_Order_Value DESC;

-- =====================================================
-- 5. COUNT PRODUCTS IN EACH CATEGORY
-- Includes categories with zero products.
-- =====================================================

SELECT
C.Category_ID,
C.Category_Name,
COUNT(P.Product_ID) AS Product_Count
FROM CATEGORY C
LEFT JOIN PRODUCT P
ON C.Category_ID = P.Category_ID
GROUP BY C.Category_ID, C.Category_Name
ORDER BY Product_Count DESC;

-- =====================================================
-- 6. DISPLAY ORDERS WITH CUSTOMER AND PAYMENT DETAILS
-- LEFT JOIN keeps orders without a payment record.
-- =====================================================

SELECT
O.Order_ID,
C.Name AS Customer_Name,
O.Order_Date,
O.Total_Amount,
P.Payment_Method,
P.Amount AS Payment_Amount,
P.Payment_Status
FROM ORDERS O
INNER JOIN CUSTOMER C
ON O.Customer_ID = C.Customer_ID
LEFT JOIN PAYMENT P
ON O.Order_ID = P.Order_ID
ORDER BY O.Order_Date;

-- =====================================================
-- 7. NUMBER OF ORDERS PLACED BY EACH CUSTOMER
-- =====================================================

SELECT
C.Customer_ID,
C.Name AS Customer_Name,
COUNT(O.Order_ID) AS Order_Count
FROM CUSTOMER C
LEFT JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Name
ORDER BY Order_Count DESC;

-- =====================================================
-- 8. CUSTOMERS WITH TOTAL ORDER VALUE ABOVE 3000
-- HAVING filters grouped results.
-- =====================================================

SELECT
C.Customer_ID,
C.Name AS Customer_Name,
SUM(O.Total_Amount) AS Total_Order_Value
FROM CUSTOMER C
INNER JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Name
HAVING SUM(O.Total_Amount) > 3000
ORDER BY Total_Order_Value DESC;

-- =====================================================
-- 9. TOTAL QUANTITY SOLD FOR EACH PRODUCT
-- =====================================================

SELECT
P.Product_ID,
P.Product_Name,
COALESCE(SUM(OI.Quantity), 0) AS Total_Quantity_Ordered
FROM PRODUCT P
LEFT JOIN ORDER_ITEM OI
ON P.Product_ID = OI.Product_ID
GROUP BY P.Product_ID, P.Product_Name
ORDER BY Total_Quantity_Ordered DESC;

-- =====================================================
-- 10. TOTAL VALUE OF ORDER ITEMS PER ORDER
-- This calculates the sum from ORDER_ITEM records.
-- =====================================================

SELECT
O.Order_ID,
O.Total_Amount AS Stored_Order_Total,
COALESCE(SUM(OI.Quantity * OI.Price), 0) AS Calculated_Item_Total
FROM ORDERS O
LEFT JOIN ORDER_ITEM OI
ON O.Order_ID = OI.Order_ID
GROUP BY O.Order_ID, O.Total_Amount
ORDER BY O.Order_ID;
