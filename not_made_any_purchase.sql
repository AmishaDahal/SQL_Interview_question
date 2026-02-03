/*16 find customer who have not made any purchase */

Select customer_name,purchase_id
from customer c
left join sales s
on c.customer_id = s.customer_id
where purchase_id is null 

