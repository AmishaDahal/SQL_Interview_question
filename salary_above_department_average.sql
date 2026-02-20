/*83 Find employees whose salary is above their department’s average but below the overall average salary.*/


With avg_salary As (
select avg(salary) as overall_avg_Salary
from employee),

As depart_avg_salary as 
(select department_id,avg(salary) as depart_avg_salary
from employee
group by 1
)
