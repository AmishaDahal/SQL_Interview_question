/*76. Generate a report that shows sales and sales growth percentage compared to the same month last year.*/


WITH monthly_sales AS (
  SELECT
    DATE_FORMAT(sales_date, '%Y-%m-01') AS sales_month,
    SUM(sales_amount) AS total_sales
  FROM sales
  GROUP BY DATE_FORMAT(sales_date, '%Y-%m-01')
)
SELECT
  sales_month,
  total_sales,
  LAG(total_sales, 12) OVER (ORDER BY sales_month) AS sales_12_months_ago,
  (total_sales - LAG(total_sales, 12) OVER (ORDER BY sales_month)) * 100.0
    / NULLIF(LAG(total_sales, 12) OVER (ORDER BY sales_month), 0) AS pct_change_24_month_yoy
FROM monthly_sales
ORDER BY sales_month;
