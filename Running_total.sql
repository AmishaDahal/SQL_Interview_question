/*7)Running total of salaries by department */

select name,departments_id,salary,
sum(salary) over (
partition by departments_id order by id 
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total
from employees;
