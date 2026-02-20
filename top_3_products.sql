
/*80 Write a query to find the top 3 products with the highest total sales amount each month .*/


with montly_product as (
select product_id,Extract(Month from date) as month
sum(amount) as revenue
from sales),

As sales_rank(select * ,dense_rank() over(partition by product_id order by revenue) as sales_order
from montly_product) 

Select prodcut_id,revenue,sales_order,month
from sales_rank
where sales_order<=3
order by month,sales_rank;
