
/*78. Calculate the total revenue for each customer, and rank them from highest to lowest spender.*/

select customer_id,sum(amount) as revenue,
dense_rank() over(Partition by customer_id order by sum(amount) desc )
from sales
group by customer_id;
