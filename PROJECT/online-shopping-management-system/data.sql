-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: data.sql
-- PURPOSE: Insert sample data
-- Run schema.sql before running this file.
-- =====================================================

USE OnlineShopping;

-- =====================================================
-- 1. CUSTOMER DATA
-- =====================================================

INSERT INTO CUSTOMER
(Customer_ID, Name, Email, Phone, Address)
VALUES
('C101', 'Aarav Sharma', '[aarav@example.com](mailto:aarav@example.com)', '9000000101', 'Hyderabad'),
('C102', 'Diya Reddy', '[diya@example.com](mailto:diya@example.com)', '9000000102', 'Vijayawada'),
('C103', 'Arjun Kumar', '[arjun@example.com](mailto:arjun@example.com)', '9000000103', 'Chennai'),
('C104', 'Meera Rao', '[meera@example.com](mailto:meera@example.com)', '9000000104', 'Bengaluru'),
('C105', 'Rohan Verma', '[rohan@example.com](mailto:rohan@example.com)', '9000000105', 'Rajahmundry');

-- =====================================================
-- 2. CATEGORY DATA
-- =====================================================

INSERT INTO CATEGORY
(Category_ID, Category_Name)
VALUES
('CAT01', 'Electronics'),
('CAT02', 'Fashion'),
('CAT03', 'Home Appliances'),
('CAT04', 'Books'),
('CAT05', 'Accessories');

-- =====================================================
-- 3. PRODUCT DATA
-- Product prices and IDs follow the project examples.
-- Stock values are illustrative sample values.
-- =====================================================

INSERT INTO PRODUCT
(Product_ID, Product_Name, Price, Stock, Category_ID)
VALUES
('P101', 'Wireless Headphones', 2499.00, 25, 'CAT01'),
('P102', 'Smart Watch',         1499.00, 30, 'CAT01'),
('P103', 'Bluetooth Speaker',   2999.00, 15, 'CAT01'),
('P104', 'Casual T-Shirt',       799.00, 40, 'CAT02'),
('P105', 'Notebook Set',         599.00, 50, 'CAT04'),
('P106', 'Travel Backpack',     1999.00, 20, 'CAT05'),
('P107', 'Home Appliance',      3499.00, 10, 'CAT03'),
('P108', 'Wireless Keyboard',   2499.00, 18, 'CAT01');

-- =====================================================
-- 4. ORDERS DATA
-- Total_Amount matches the order-item line totals below.
-- =====================================================

INSERT INTO ORDERS
(Order_ID, Customer_ID, Order_Date, Total_Amount)
VALUES
('O101', 'C101', '2026-01-10', 3998.00),
('O102', 'C102', '2026-01-12', 2999.00),
('O103', 'C103', '2026-01-15', 1398.00),
('O104', 'C104', '2026-01-18', 3499.00),
('O105', 'C105', '2026-01-20', 4498.00);

-- =====================================================
-- 5. ORDER_ITEM DATA
-- Price represents the unit price recorded for the order.
-- =====================================================

INSERT INTO ORDER_ITEM
(Order_Item_ID, Order_ID, Product_ID, Quantity, Price)
VALUES
('OI101', 'O101', 'P101', 1, 2499.00),
('OI102', 'O101', 'P102', 1, 1499.00),
('OI103', 'O102', 'P103', 1, 2999.00),
('OI104', 'O103', 'P104', 1,  799.00),
('OI105', 'O103', 'P105', 1,  599.00),
('OI106', 'O104', 'P107', 1, 3499.00),
('OI107', 'O105', 'P106', 1, 1999.00),
('OI108', 'O105', 'P108', 1, 2499.00);

-- =====================================================
-- 6. PAYMENT DATA
-- A pending payment can have a NULL Payment_Date.
-- =====================================================

INSERT INTO PAYMENT
(Payment_ID, Order_ID, Payment_Date, Payment_Method, Amount, Payment_Status)
VALUES
('PAY101', 'O101', '2026-01-10', 'UPI',           3998.00, 'Completed'),
('PAY102', 'O102', '2026-01-12', 'Credit Card',   2999.00, 'Completed'),
('PAY103', 'O103', '2026-01-15', 'Debit Card',    1398.00, 'Completed'),
('PAY104', 'O104', '2026-01-18', 'Cash on Delivery', 3499.00, 'Completed'),
('PAY105', 'O105', NULL,         'UPI',           4498.00, 'Pending');

-- =====================================================
-- VERIFY INSERTED DATA
-- =====================================================

SELECT * FROM CUSTOMER;
SELECT * FROM CATEGORY;
SELECT * FROM PRODUCT;
SELECT * FROM ORDERS;
SELECT * FROM ORDER_ITEM;
SELECT * FROM PAYMENT;
