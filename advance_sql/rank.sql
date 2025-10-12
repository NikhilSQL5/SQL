SELECT 
*,
SUM (cid) over(PARTITION BY cid) [Total Order]
FROM Orders

/*rank and order by*/

SELECT TOP 10
*,
RANK() OVER( PARTITION BY cid ORDER BY order_date DESC) [Total Order]
FROM Orders
