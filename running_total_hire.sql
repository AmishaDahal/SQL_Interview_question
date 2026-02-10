/*51 write a query to create a running cout of how many employee joined i each year*/

select employee_id,join_year,
count(*) as yearly_hire ,sum(count(*)) over(order by join_year) as running_total_hire
from (select extract(Year from hire_date) as join_year
from employees) sub
group by join_year
order by join_year
