-- =====================================================
-- PROJECT: ONLINE SHOPPING MANAGEMENT SYSTEM
-- FILE: schema.sql
-- PURPOSE: Create database and tables
-- =====================================================

CREATE DATABASE IF NOT EXISTS OnlineShopping;

USE OnlineShopping;

-- Optional reset:
-- Uncomment these statements ONLY if you want to remove
-- existing tables and all their data before recreating them.
-------------------------------------------------------------

-- DROP TABLE IF EXISTS PAYMENT;
-- DROP TABLE IF EXISTS ORDER_ITEM;
-- DROP TABLE IF EXISTS ORDERS;
-- DROP TABLE IF EXISTS PRODUCT;
-- DROP TABLE IF EXISTS CATEGORY;
-- DROP TABLE IF EXISTS CUSTOMER;

-- =====================================================
-- 1. CUSTOMER TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS CUSTOMER (
Customer_ID VARCHAR(10) PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Email VARCHAR(150) NOT NULL UNIQUE,
Phone VARCHAR(20),
Address VARCHAR(255)
) ENGINE = InnoDB;

-- =====================================================
-- 2. CATEGORY TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS CATEGORY (
Category_ID VARCHAR(10) PRIMARY KEY,
Category_Name VARCHAR(100) NOT NULL UNIQUE
) ENGINE = InnoDB;

-- =====================================================
-- 3. PRODUCT TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS PRODUCT (
Product_ID VARCHAR(10) PRIMARY KEY,
Product_Name VARCHAR(150) NOT NULL,
Price DECIMAL(10,2) NOT NULL,
Stock INT NOT NULL DEFAULT 0,
Category_ID VARCHAR(10),

```
CONSTRAINT chk_product_price
    CHECK (Price >= 0),

CONSTRAINT chk_product_stock
    CHECK (Stock >= 0),

CONSTRAINT fk_product_category
    FOREIGN KEY (Category_ID)
    REFERENCES CATEGORY(Category_ID)
    ON UPDATE CASCADE
    ON DELETE SET NULL
```

) ENGINE = InnoDB;

-- =====================================================
-- 4. ORDERS TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS ORDERS (
Order_ID VARCHAR(10) PRIMARY KEY,
Customer_ID VARCHAR(10) NOT NULL,
Order_Date DATE NOT NULL,
Total_Amount DECIMAL(10,2) NOT NULL,

```
CONSTRAINT chk_order_total
    CHECK (Total_Amount >= 0),

CONSTRAINT fk_orders_customer
    FOREIGN KEY (Customer_ID)
    REFERENCES CUSTOMER(Customer_ID)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
```

) ENGINE = InnoDB;

-- =====================================================
-- 5. ORDER_ITEM TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS ORDER_ITEM (
Order_Item_ID VARCHAR(10) PRIMARY KEY,
Order_ID VARCHAR(10) NOT NULL,
Product_ID VARCHAR(10) NOT NULL,
Quantity INT NOT NULL,
Price DECIMAL(10,2) NOT NULL,

```
CONSTRAINT chk_order_item_quantity
    CHECK (Quantity > 0),

CONSTRAINT chk_order_item_price
    CHECK (Price >= 0),

CONSTRAINT fk_order_item_order
    FOREIGN KEY (Order_ID)
    REFERENCES ORDERS(Order_ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE,

CONSTRAINT fk_order_item_product
    FOREIGN KEY (Product_ID)
    REFERENCES PRODUCT(Product_ID)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
```

) ENGINE = InnoDB;

-- =====================================================
-- 6. PAYMENT TABLE
-- =====================================================

CREATE TABLE IF NOT EXISTS PAYMENT (
Payment_ID VARCHAR(10) PRIMARY KEY,
Order_ID VARCHAR(10) NOT NULL UNIQUE,
Payment_Date DATE,
Payment_Method VARCHAR(50) NOT NULL,
Amount DECIMAL(10,2) NOT NULL,
Payment_Status VARCHAR(20) NOT NULL DEFAULT 'Pending',

```
CONSTRAINT chk_payment_amount
    CHECK (Amount >= 0),

CONSTRAINT chk_payment_status
    CHECK (
        Payment_Status IN
        ('Pending', 'Completed', 'Failed', 'Refunded')
    ),

CONSTRAINT fk_payment_order
    FOREIGN KEY (Order_ID)
    REFERENCES ORDERS(Order_ID)
    ON UPDATE CASCADE
    ON DELETE CASCADE
```

) ENGINE = InnoDB;

-- =====================================================
-- VERIFY TABLES
-- =====================================================

SHOW TABLES;

DESCRIBE CUSTOMER;
DESCRIBE CATEGORY;
DESCRIBE PRODUCT;
DESCRIBE ORDERS;
DESCRIBE ORDER_ITEM;
DESCRIBE PAYMENT;
