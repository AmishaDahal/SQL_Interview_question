/*36 Write a query to rank salespeople by monthly sales,resetting the rank every month */

select  sales_person_id, sales_month,total_sales,
Rank() over(Partition by sales_month order by total_sales Desc) as montly_rank
from(
select sales_person_id, month(date) as sales_month,sum(amount) as total_sales
from sales
group by sales_person_id,sales_month) As monthly_Sales;
