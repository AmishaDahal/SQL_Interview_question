/*48. Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product.*/


select product_id,sale_date,amount,
amount- lag(amount) over(partition by product_id order bu sales_date) as sales_diff
from sales;
