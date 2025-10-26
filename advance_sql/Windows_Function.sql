USE AMAZON

SELECT TOP 5
c.cid,
c.fname +' '+c.lname [Customer Name],
p.product_name,
p.price,
o.order_date,
o.order_status
FROM Orders o
FULL JOIN Customer c
ON c.cid = o.cid
FULL JOIN Product p
ON p.pid = o.pid

SELECT 
*,
SUM (cid) over(PARTITION BY cid) [Total Order]
FROM Orders

  
/*rank and order by*/

SELECT TOP 10
*,
RANK() OVER( PARTITION BY cid ORDER BY order_date DESC) [Total Order]
FROM Orders
SELECT 
c.cid,
c.fname +' '+c.lname [Customer Name],
p.product_name,
p.price,
o.order_date,
o.order_status,
RANK() OVER( PARTITION BY c.cid ORDER BY o.order_date DESC) [Total Order]
FROM Orders o
RIGHT JOIN Customer c
ON c.cid = o.cid
RIGHT JOIN Product p
ON p.pid = o.pid
WHERE c.cid IS NOT NULL
SELECT 
c.cid,
c.fname +' '+c.lname [Customer Name],
p.product_name,
p.price,
o.order_date,
o.order_status,
SUM(p.price) over(ORDER BY p.pid  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) [Total sales]
FROM Orders o
RIGHT JOIN Customer c
ON c.cid = o.cid
RIGHT JOIN Product p
ON p.pid = o.pid
WHERE c.cid IS NOT NULL

select top 3
*,
SUM(price) over(ORDER BY pid  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW ) [Total sales]
from Product

/*unbounded preceding and unbounded following*/
SELECT 
pid,
product_name,
price,
SUM(price) OVER(ORDER BY pid ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) [TOTAL SALES]
FROM Product

/*unbounded preceding and current row*/
SELECT 
pid,
product_name,
price,
SUM(price) OVER(ORDER BY pid ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) [RUNNING TOTAL SALES]
FROM Product

/*2 preceding and current row*/
SELECT 
pid,
product_name,
price,
SUM(price) OVER(ORDER BY pid ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) [AVG_OF_3_DAYS]
FROM Product

/*range unbounded preceding and current row*/
SELECT 
pid,
product_name,
price,
SUM(price) OVER(ORDER BY price RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) [RUNNING TOTAL SALES]
FROM Product

/*Row Number*/
SELECT 
pid,
product_name,
price,
ROW_NUMBER () OVER(ORDER BY price ) [Row Number]
FROM Product

/*Rank*/
SELECT 
pid,
product_name,
price,
RANK() OVER(ORDER BY price ) [Rank]
FROM Product

