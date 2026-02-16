/*72. Calculate the median salary by department using window functions.*/


select distinct department_id,
,PERCENTILE_CONT(0.5) within group (order by salary) over(partition by department_id) as median_salary
from employees;
