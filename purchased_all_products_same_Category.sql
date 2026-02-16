/*67 List the customers who purchased all products in a specific category*/


select customer_id
from sales
where category = 10 
group by customer_id
having count(distinct product_id) =
(select count(distinct product_id)
from products
where category=10);

