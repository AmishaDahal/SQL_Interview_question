/*61. Find the average number of orders per customer and standard deviation.*/

with order_per_customer as (
select customer_id,count(*) as order_count
from orders
group by customer_id)
select avg(order_count) as avg_order_percustomer,
STDDEV(order_count) as stddev_orders_per_customer
from order_per_customer
