/*59 write a query to calculate cumulative % of total sales per product */


with prodcut_sales as (
select product_id, sum(sales_amount) as product_total
from sales 
group by product_id)

select product_id,product_total
sum(product_total) over(order by product_total desc) *100/sum(product_total) over()
 as cumulative_percentage
from product_sales;
