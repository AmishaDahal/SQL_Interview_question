/* 79. Write a query to pivot monthly sales data for each product into columns.*/
SELECT product_id,
SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 1 THEN amount ELSE 0 END) AS Jan,
SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 2 THEN amount ELSE 0 END) AS Feb,
-- Repeat for other months
SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 12 THEN amount ELSE 0 END) AS Dec
FROM sales
GROUP BY product_id;
