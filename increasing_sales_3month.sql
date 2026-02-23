/*90. Write a query to find products with increasing sales over the last 3 months.*/

with monthly_sales As(
select product_id,extract(Month from date) as monthly_date,
sum(amount) as total_sales
from order
group by 1,2),

ranked_Sales as (

select prouct_id,monthly_date,total_slaes,row_number() over (partition by  product_id order by montly_date desc) as rank_sale 
from monthly_sale
)
last3 As (
select product_id,
MAX(CASE WHEN rn = 1 THEN month_sales END) AS m0,
    MAX(CASE WHEN rn = 2 THEN month_sales END) AS m1,
    MAX(CASE WHEN rn = 3 THEN month_sales END) AS m2
from last3
where rank_sale <=3
group by product_id)

SELECT product_id
FROM last3
WHERE m2 IS NOT NULL             
  AND m2 < m1 AND m1 < m0;
