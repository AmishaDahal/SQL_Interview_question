/*62. Rank employees by salary within their department, and calculate percent rank.*/


select name,department_id,salary,
rank() over(Partition by department_id order by salary Desc) as salary_rank,
Percent_rank() over(Partition by department_id order by salary Desc) as salary_percent_rank
from employees;
