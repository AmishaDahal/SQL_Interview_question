/* 88 Calculate a 3-month moving average of monthly sales per product.*/

WITH monthly_sales AS (
 SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
 FROM sales
 GROUP BY product_id, month
)
SELECT product_id, month, total_sales,
 AVG(total_sales) OVER (PARTITION BY
product_id ORDER BY month ROWS BETWEEN 2 
PRECEDING AND CURRENT ROW) AS
moving_avg
FROM monthly_sales;
