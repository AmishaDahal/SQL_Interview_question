/*52 write a query to find the second most recent order date per customer*/

select * from 
(select *,row_number() over(partition by customer_id order by date desc) as customer_order from orders ) as sub
where customer_order = 2 ;
