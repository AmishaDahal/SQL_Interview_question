/*84 Calculate the total sales amount and number of orders per customer in the last year.*/

select  customer_id,count(*) as total_orders,sum(amount) as revenue
from order
where order_Date >=Curr(date)- interval 1 year
group by customer_id;
