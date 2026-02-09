/* 44 write a query to get the running total of sales per customer, order by sales date*/

select customer_id,sales_Date,amount
sum(sales_Amount) over(partition by customer_id order by sales_Date) as running_total
from sales;
