/*45 write the department-wise salary percentile (eg 90th percentile) using window function.*/


select department_id,salary,
Percentile_cont(0.9) within group (order by salary) over (Partition by department_id) as pct_90_salary
from employees;
