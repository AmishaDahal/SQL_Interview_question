/*56 Find customers who purchased more than once in the same day.*/

select customer_id,purchase_date,count(*) as purchasecount
from order
group by customer_id,purchase_date
having count(*)>1
