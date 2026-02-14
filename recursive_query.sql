/* 71 Write a recursive query to list all ancestors(managers) of a given employee.*/

with recursive ancestors As (
(
select employee_id, manager_id 
from employee
where employee =123


union all

(select employee_id,manager_id
from employee e 
join ancestors a
on e.manager_id = a.manager_id)

select * from ancestors where id !=123
