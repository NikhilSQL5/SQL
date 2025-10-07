print('----Scalar----Subquery----');

SELECT 
COUNT(cid) [Total Customer]
FROM Customer;

print('----Row----Subquery----');

SELECT city
FROM Customer;

print('----Table----Subquery----');

SELECT * FROM Customer;

print('----From----Subquery----');

SELECT 
*
FROM (
SELECT * 
FROM Customer
WHERE city = 'New York'
)t

print('----Join----Subquery----');

SELECT 
c.cid,
c.fname,
c.city,
o.order_date,
o.order_status
FROM Customer c

LEFT JOIN (
SELECT 
cid,
order_date,
order_status
FROM Orders
) o

ON c.cid = o.cid

SELECT TOP 3 
*
FROM Product
WHERE p_quantity > (SELECT TOP 3 AVG(price) FROM Product)


print('----IN----Subquery----');

SELECT 
*
FROM Customer
WHERE cid IN (
SELECT TOP 10
cid
FROM Customer
WHERE CITY = 'New York'
)
