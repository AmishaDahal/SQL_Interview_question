
/*20 Write a query to find the employee with salary greater than average salary in the eniter company,order  salary descending */

select salary
from employee
where salary > (Select avg(salary) from employee)
order by salary desc 
