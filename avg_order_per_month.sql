
/*50 Find average order value per month and product categoty */

select month(date) as month ,product_id,avg(order_value) as avg_order_value
from orders
group by month,product_id;
