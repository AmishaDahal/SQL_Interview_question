
/*81 Find the customers who placed orders only in the last 30 days.*/

SELECT DISTINCT customer_id
FROM orders
WHERE order_date >= CURDATE() - INTERVAL 30 DAY
  AND customer_id NOT IN (
    SELECT DISTINCT customer_id
    FROM orders
    WHERE order_date < CURDATE() - INTERVAL 30 DAY
  );
