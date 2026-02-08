/*39 Retrieve the last 5 orders for each customer */

select * from
(select *,row_number() over( partition by customer_id, order  by order_date desc) as order_row from order) as o
where order_row<=5
