
/*74. Find the moving median of daily sales over the last 7 days for each product.*/

WITH daily_sales AS (
SELECT product_id, sale_date, SUM(amount) AS
total_sales
FROM sales
GROUP BY product_id, sale_date
)
SELECT product_id, sale_date,
PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY total_sales)
OVER (PARTITION BY product_id ORDER BY
sale_date ROWS BETWEEN 6 PRECEDING AND
CURRENT ROW) AS moving_median
FROM daily_sales;
