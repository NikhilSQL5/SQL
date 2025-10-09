WITH CTE_Main_table AS
(
SELECT 
	c.cid,
	c.fname,
	c.city,
	o.oid,
	o.order_status,
	o.order_date,
	p.pid,
	p.product_name,
	p.price,	
	p.p_quantity
FROM Orders o

FULL JOIN Customer c
ON o.cid = c.cid

FULL JOIN Product p
ON o.pid = p.pid
)

SELECT 
distinct cid,
fname,
SUM(price) over(PARTITION BY cid ) AS [Total Price] 
FROM CTE_Main_table
WHERE cid IS NOT NULL

