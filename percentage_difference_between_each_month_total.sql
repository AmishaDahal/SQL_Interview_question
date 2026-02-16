/* 74. Find the percentage difference between each month’s total sales and the previous month’s total sales.*/


WITH monthly_sales AS (
 SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
 FROM sales
 GROUP BY month
)

SELECT month, total_sales,
  (total_sales - LAG(total_sales) OVER (ORDER BY month)) * 100.0
  / NULLIF(LAG(total_sales) OVER (ORDER BY month), 0) AS pct_change
FROM monthly_sales;

