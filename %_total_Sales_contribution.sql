/* 78. Calculate the percentage contribution of each product’s sales to the total sales per month.*/

WITH monthly_sales AS (
SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS product_sales
FROM sales

GROUP BY product_id, month
),
total_monthly_sales AS (
SELECT month, SUM(product_sales) AS total_sales
FROM monthly_sales
GROUP BY month
)
SELECT ms.product_id, ms.month, ms.product_sales,
(ms.product_sales * 100.0) / tms.total_sales AS
pct_contribution
FROM monthly_sales ms
JOIN total_monthly_sales tms ON ms.month =
tms.month;
