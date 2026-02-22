/*85. List the top 5 highest-paid employees per department.*/

with highest_paid_salary
as 
(select *,dense_rank()over(partition department_id order by salary desc) as salary_rank
from employee)
