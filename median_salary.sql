/*6). write a query to find the median salary*/

select *,
Percentile_Disc(0.5) within group (order by salary) over() as 'medain_salary'
from employee;
