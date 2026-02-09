/* 41 Find the department with the lowest average salary.*/


select department_id,avg(salary) as avg_salary
from employee
group by department_id
order by avg_salary
limit 1;
