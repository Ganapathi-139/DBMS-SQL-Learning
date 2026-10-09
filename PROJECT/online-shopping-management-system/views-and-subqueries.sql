-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: views-and-subqueries.sql
-- PURPOSE: Views and subqueries
-- =====================================================

USE OnlineShopping;

-- =====================================================
-- 1. CREATE A VIEW OF CUSTOMER ORDERS
-- CREATE OR REPLACE updates the view if it already exists.
-- =====================================================

CREATE OR REPLACE VIEW CustomerOrders AS
SELECT
C.Customer_ID,
C.Name AS Customer_Name,
O.Order_ID,
O.Order_Date,
O.Total_Amount
FROM CUSTOMER C
INNER JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID;

-- Display the view.
SELECT * FROM CustomerOrders;

-- View orders for one customer.
SELECT *
FROM CustomerOrders
WHERE Customer_ID = 'C101';

-- =====================================================
-- 2. PRODUCTS PRICED ABOVE THE AVERAGE
-- The subquery calculates the average product price.
-- =====================================================

SELECT
Product_ID,
Product_Name,
Price
FROM PRODUCT
WHERE Price > (
SELECT AVG(Price)
FROM PRODUCT
)
ORDER BY Price DESC;

-- =====================================================
-- 3. CUSTOMERS WHO HAVE PLACED AT LEAST ONE ORDER
-- EXISTS checks whether a matching order exists.
-- =====================================================

SELECT
C.Customer_ID,
C.Name,
C.Email
FROM CUSTOMER C
WHERE EXISTS (
SELECT 1
FROM ORDERS O
WHERE O.Customer_ID = C.Customer_ID
);

-- =====================================================
-- 4. PRODUCTS THAT HAVE NEVER BEEN ORDERED
-- NOT EXISTS finds products with no matching order item.
-- =====================================================

SELECT
P.Product_ID,
P.Product_Name,
P.Price
FROM PRODUCT P
WHERE NOT EXISTS (
SELECT 1
FROM ORDER_ITEM OI
WHERE OI.Product_ID = P.Product_ID
);

-- =====================================================
-- 5. CUSTOMERS WHOSE TOTAL ORDER VALUE EXCEEDS 3000
-- =====================================================

SELECT
C.Customer_ID,
C.Name,
SUM(O.Total_Amount) AS Total_Order_Value
FROM CUSTOMER C
INNER JOIN ORDERS O
ON C.Customer_ID = O.Customer_ID
GROUP BY C.Customer_ID, C.Name
HAVING SUM(O.Total_Amount) > 3000;

-- =====================================================
-- 6. THE MOST EXPENSIVE PRODUCT
-- A subquery finds the maximum price.
-- =====================================================

SELECT
Product_ID,
Product_Name,
Price
FROM PRODUCT
WHERE Price = (
SELECT MAX(Price)
FROM PRODUCT
);

-- =====================================================
-- 7. ORDERS WITH AMOUNTS ABOVE THE AVERAGE ORDER TOTAL
-- =====================================================

SELECT
Order_ID,
Customer_ID,
Order_Date,
Total_Amount
FROM ORDERS
WHERE Total_Amount > (
SELECT AVG(Total_Amount)
FROM ORDERS
)
ORDER BY Total_Amount DESC;

-- =====================================================
-- 8. CUSTOMERS WHO HAVE NOT PLACED ANY ORDERS
-- =====================================================

SELECT
C.Customer_ID,
C.Name,
C.Email
FROM CUSTOMER C
WHERE NOT EXISTS (
SELECT 1
FROM ORDERS O
WHERE O.Customer_ID = C.Customer_ID
);

-- =====================================================
-- 9. PAYMENTS THAT ARE STILL PENDING
-- =====================================================

SELECT
Payment_ID,
Order_ID,
Payment_Method,
Amount,
Payment_Status
FROM PAYMENT
WHERE Payment_Status = 'Pending';

-- =====================================================
-- 10. CUSTOMERS WHO HAVE AN ORDER ABOVE 3000
-- EXISTS checks individual orders, not the total spend.
-- =====================================================

SELECT
C.Customer_ID,
C.Name
FROM CUSTOMER C
WHERE EXISTS (
SELECT 1
FROM ORDERS O
WHERE O.Customer_ID = C.Customer_ID
AND O.Total_Amount > 3000
);
