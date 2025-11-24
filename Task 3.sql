use e_commerce;

-- List all customers from Delhi
SELECT customer_id, name, city
FROM customers
WHERE city = 'Delhi'
ORDER BY name;

-- Get order details with customer name and product
SELECT o.order_id, c.name, p.product_name, oi.quantity
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p ON oi.product_id = p.product_id;

-- Customers who placed orders (including those with no orders)
SELECT c.customer_id, c.name, o.order_id
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- Total revenue per product
SELECT p.product_name,
       SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

-- Total revenue per customer
SELECT c.name,
       SUM(oi.quantity * p.price) AS customer_spend
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY customer_spend DESC;

-- Find the highest spending customer
SELECT name, customer_spend FROM (
    SELECT c.name,
           SUM(oi.quantity * p.price) AS customer_spend
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    JOIN order_items oi ON o.order_id = oi.order_id
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY c.name
) AS spend_table
ORDER BY customer_spend DESC
LIMIT 1;

CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orderitems_order ON order_items(order_id);
CREATE INDEX idx_orderitems_product ON order_items(product_id);

-- Products that were never ordered
SELECT p.product_name, oi.order_id
FROM order_items oi
RIGHT JOIN products p ON oi.product_id = p.product_id;



