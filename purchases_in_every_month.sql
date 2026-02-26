/* 96 71. Find customers who made purchases in every month of the current year.*/

SELECT customer_id
FROM orders
WHERE YEAR(order_date) = YEAR(CURDATE())
GROUP BY customer_id
HAVING COUNT(DISTINCT MONTH(order_date)) = 12;
