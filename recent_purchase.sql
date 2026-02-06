/*28 find the most recent purchase per customer using window function */

select * from 
(
select *, row_number()over(Partition by customer_id order by purchase_date desc) as recent_sales from sales
) t where recent_sales = 1; 
