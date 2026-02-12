/*46 Find the gaps in date sequence for each customer */


With distinct_customer
As(select distinct customer_id,order_date
from customer),

Missing_Date As (
select customer_id,
order_date,
lag(order_date) over(partition by cutsomer_id) as prev_date
)

select customer_id,
order_date,
prev_date,
(order_date -prev_date)-1 as missing_days
from Missing_Date
where prev_date is not null
and (order_date-prev_date)>1
order by customer_id,prev_date
