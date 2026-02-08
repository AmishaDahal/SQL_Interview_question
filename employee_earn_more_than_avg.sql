/*38 Find the employees who earn more than average salary across the company but less than the highest salary in their department .*/

 select * from employee e 
where salary > (select avg(Salary) from employees)
and salary<(select max(salary)
from employees
where department_id = e.department_id);
