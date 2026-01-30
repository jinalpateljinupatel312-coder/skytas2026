create database ECommerceDB;

use ECommerceDB;

-- CUSTOMERS TABLE
create table customers (
customer_id int primary key,
name varchar(50),
city varchar(50)
);

INSERT INTO customers VALUES
(1, 'Amit', 'Ahmedabad'),
(2, 'Riya', 'Surat'),
(3, 'Rahul', 'Vadodara'),
(4, 'Neha', 'Rajkot'),
(5, 'Karan', 'Ahmedabad');

-- ORDERS TABLE
create table orders(
order_id int primary key,
customer_id int,
order_date DATE,
amount Decimal(10,2),
foreign key (customer_id) 
references customers(customer_id)
);

INSERT INTO orders VALUES
(1001, 1, '2025-01-10', 80000),
(1002, 2, '2025-01-15', 25000),
(1003, 1, '2025-02-05', 15000),
(1004, 3, '2025-02-20', 60000),
(1005, 5, '2025-03-01', 12000);

select * from orders;


-- PRODUCTS TABLE
create table products(
product_id int primary key,
product_name varchar(100),
price decimal(10,2)
);

INSERT INTO products VALUES
(101, 'Laptop', 55000),
(102, 'Mobile Phone', 25000),
(103, 'Headphones', 3000),
(104, 'Smart Watch', 8000),
(105, 'Keyboard', 1500);


-- ORDER_ITEMS TABLE
create table order_items(
order_id int,
product_id int,
quantity int,
primary key (order_id, product_id),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);

EXEC sp_rename 'ordereitems', 'order_items';


insert into order_items values
(1001, 101, 1),
(1001, 102, 2),
(1002, 102, 1),
(1003, 103, 2),
(1004, 101, 1),
(1004, 104, 1),
(1005, 105, 2);

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM order_items;

--Total orders per customer
SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- Customer who never places an order
SELECT 
    c.customer_id,
    c.name
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Highest selling product
SELECT 
top 1
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
JOIN order_items oi 
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC

-- Monthly sales report
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

--Customer with total purchase
SELECT 
    c.customer_id,
    c.name,
    SUM(o.amount) AS total_purchase
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.amount) > 50000;

-- Top 3 cities by revenue
SELECT 
top 3
    c.city,
    SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC