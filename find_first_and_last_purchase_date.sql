
/* 73. Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.*/

SELECT c.customer_id,
 MIN(s.purchase_date) AS first_purchase,
 MAX(s.purchase_date) AS last_purchase
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;

