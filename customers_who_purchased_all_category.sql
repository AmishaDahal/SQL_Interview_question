/*34 Find customers who purchased from every category in 2025 only.*/

select customer_id
from sales
where Extract(Year from Date)=2025
group by customer_id
having count(distinct category_id)=(select count(distinct category_id) from sales where where Extract(Year from Date)=2025)
