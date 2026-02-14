/*64 Write a query to find consecutive days where sales were above a threshold.*/



WITH sales_flagged AS (
  SELECT
    s.*,
    CASE WHEN amount > 1000 THEN 1 ELSE 0 END AS flag
  FROM sales s
),
ranked AS (
  SELECT
    sales_date,
    DENSE_RANK() OVER (ORDER BY sales_date) AS dr
  FROM sales_flagged
  WHERE flag = 1
),
days AS (
  SELECT
    sales_date,
    DATE_SUB(sales_date, INTERVAL dr DAY) AS grp
  FROM ranked
)
SELECT
  MIN(sales_date) AS start_date,
  MAX(sales_date) AS end_date,
  DATEDIFF(MAX(sales_date), MIN(sales_date)) + 1 AS consecutive_day
FROM days
GROUP BY grp
ORDER BY consecutive_day DESC;

