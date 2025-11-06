
CREATE TABLE customers (
   id INT,
   first_name VARCHAR(50),
   country VARCHAR(50),
   score INT
);

INSERT INTO customers (id, first_name, country, score)
VALUES 
(1, 'Radha', 'Mumbai', 350),
(2, 'Nick', 'USA', 800),
(3, 'Ram', 'Delhi', 600),
(4, 'Shyam', 'Poland', 540),
(5, 'Prity', 'UK', 0),
(6, 'Ramesh', 'India', 350),
(7, NULL, NULL, NULL);
