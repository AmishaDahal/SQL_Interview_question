/* 32 Find Customers who made purchases in every category available.*/

Select customer_id
from sales
group by customer_id
having(count distinct category_id)=(Select count (distinct category) from customer_id)
