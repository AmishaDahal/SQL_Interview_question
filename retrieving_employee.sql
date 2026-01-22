/*
3) Retrieve employees who earn more than their manager . */

select e.name, e.salary,m.name,m.salary
from employee as e 
join employee as m 
on e.manager_id = m.manager_id
where e.salary>m.salary 
 
