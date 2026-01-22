/*
1)Find the second highest salary from the employee table.
*/

select 
max(salary) 
from employee
where salary < (
        select max(salary) 
        from employee);
