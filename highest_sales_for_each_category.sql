/* 99 73. Get the product with the highest sales for each category.*/

WITH category_sales AS (
SELECT category_id, product_id, SUM(amount) AS
total_sales,
RANK() OVER (PARTITION BY category_id
ORDER BY SUM(amount) DESC) AS sales_rank
FROM sales
GROUP BY category_id, product_id
)
SELECT category_id, product_id, total_sales
FROM category_sales
WHERE sales_rank = 1;
