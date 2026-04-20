/* ============================================================================== 
   BASIC AGGREGATE FUNCTIONS
=============================================================================== */

-- Find the total number of customers
SELECT COUNT(*) AS total_customers
FROM customers

-- Find the total sales of all orders
SELECT SUM(sales) AS total_sales
FROM orders
