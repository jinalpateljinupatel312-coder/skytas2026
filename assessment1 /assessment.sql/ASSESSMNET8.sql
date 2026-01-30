CREATE TABLE cust (
    cust_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

insert into cust values
(101,'dhruvi', 69000),
(102, 'jenny', 65000),
(103,'jay',55000),
(104, 'kittu',48000);

CREATE TABLE cust (
    cust_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);


CREATE INDEX idx_orders_cust_id
ON orders(cust_id);

EXPLAIN
SELECT *
FROM orders
WHERE customer_id = 101;


SELECT o.order_id, c.name
FROM orders o
JOIN cust c
ON o.cust_id = c.cust_id;


WHERE UPPER(name) = 'jay';


