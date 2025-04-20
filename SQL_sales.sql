create database sales;
use sales;
CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    customer_id VARCHAR(10),
    revenue DECIMAL(10, 2)
);

INSERT INTO orders (order_id, order_date, customer_id, revenue) VALUES
(1001, '2023-01-15', 'C001', 120.50),
(1002, '2023-01-18', 'C002', 340.00),
(1003, '2023-02-05', 'C003', 210.75),
(1004, '2023-02-10', 'C001', 150.00),
(1005, '2023-03-01', 'C004', 560.00);

SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(revenue) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders 
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY year, month
ORDER BY year, month;






