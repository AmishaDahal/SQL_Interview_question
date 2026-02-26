/*100 74. Find customers who haven’t ordered in the last 6 months.*/

SELECT c.customer_id
FROM customers c
WHERE NOT EXISTS (
  SELECT 1
  FROM orders o
  WHERE o.customer_id = c.customer_id
    AND o.order_date >= CURDATE() - INTERVAL 6 MONTH
);
