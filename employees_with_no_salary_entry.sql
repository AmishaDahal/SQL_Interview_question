/*69. Find employees with no corresponding entries in the salary_history table.*/

select employee_id
from employee
left join salary_history 
on e.employee_id = sh.employee_id
where sh.salary is null 
