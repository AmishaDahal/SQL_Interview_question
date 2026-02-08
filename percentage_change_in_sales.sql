/*37 Calculate the percentage change in sales compared to the previous month for each product.*/


select product_id,sales_month,
(total_sales - lag(total_Sales) over (partition by product_id order by sales_month)) *100.0 / lag(total_Sales) over (partition by product_id order by sales_month) as percent_change
from(select month(date) as sales_month,product_id,sum(amount) as total_Sales
from sales
group by sales_month,product_id) As monthly_sales
