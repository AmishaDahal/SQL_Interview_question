/*30 write a query to perform self join to find pairs of employees in the same department*/

select e.employee_name,e1.employee_name
from employee e1
join employee e2
on e1.department_id = e2.department_id and e1.id < e2.id;
