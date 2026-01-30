CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Amit', 'Ahmedabad'),
(2, 'Riya', 'Surat'),
(3, 'Kunal', 'Vadodara'),
(4, 'Neha', 'Ahmedabad');

INSERT INTO orders VALUES
(101, 1, '2024-01-10', 20000),
(102, 1, '2024-02-15', 35000),
(103, 2, '2024-02-20', 15000);

INSERT INTO products VALUES
(1, 'Laptop', 50000),
(2, 'Mobile', 20000),
(3, 'Headphones', 2000);

INSERT INTO order_items VALUES
(101, 1, 1),
(102, 2, 2),
(103, 3, 3);

-- ===============================
-- TASKS
-- ===============================

-- 1. Total orders per customer
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- 2. Customers who never placed an order
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 3. Highest selling product (by quantity)
SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC
LIMIT 1;

-- 4. Monthly sales report
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month,
       SUM(amount) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

-- 5. Customers with total purchase > 50000
SELECT c.customer_id, c.name, SUM(o.amount) AS total_purchase
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.amount) > 50000;

-- 6. Top 3 cities by revenue
SELECT c.city, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC
LIMIT 3;