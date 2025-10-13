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
