/* NO JOINS*/

SELECT TOP 3 * FROM Customer
SELECT TOP 3 * FROM Orders
SELECT TOP 3 * FROM Product

/*INNER JOINS*/

SELECT top 5 
	c.cid,
	c.fname + ' ' + c.lname,
	c.city,
	o.order_date,
	o.order_status
FROM Customer as c

INNER JOIN Orders as o
ON c.cid = o.cid

/*Left Join*/
SELECT top 5 
	c.cid,
	c.fname + ' ' + c.lname,
	c.city,
	o.order_date,
	o.order_status
FROM Customer as c

LEFT JOIN Orders as o
ON c.cid = o.cid

/*Right Join*/
SELECT top 5 
	c.cid,
	c.fname + ' ' + c.lname,
	c.city,
	o.order_date,
	o.order_status
FROM Customer as c

RIGHT JOIN Orders as o
ON c.cid = o.cid

/*FULL Join*/
SELECT top 5 
	c.cid,
	c.fname + ' ' + c.lname,
	c.city,
	o.order_date,
	o.order_status
FROM Customer as c

FULL JOIN Orders as o
ON c.cid = o.cid

/*Multiple Table Joins*/

SELECT top 5

	c.cid,
	c.fname,
	c.lname,
	o.order_date,
	o.order_status,
	p.product_name,
	p.p_quantity

FROM Orders as o

LEFT JOIN Customer as c
on c.cid = o.cid

LEFT JOIN Product as p
on o.oid = p.pid


/*LEFT ANTI JOINS*/

SELECT top 5 
	c.cid,
	c.fname + ' ' + c.lname,
	c.city,
	o.order_date,
	o.order_status
FROM Customer as c

LEFT JOIN Orders as o
ON c.cid = o.cid

WHERE o.cid IS NULL
