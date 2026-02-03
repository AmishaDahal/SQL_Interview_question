/*21 Find employees who have the same salary as their manager*/

select e1.employee,e1.salary,e2.manager
from employee e1
join employee e2 
on e1.manager_id = e2.id
where e1.salary = e2.salary 
