/*63 Find products that have never been sold*/

select productid,product_name
from product p
left join sales s
on p.product_id = s.product_id
where s.sales_id is null 
