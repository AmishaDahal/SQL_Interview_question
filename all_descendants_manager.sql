/* 87. Write a recursive query to list all descendants of a manager in an organizational hierarchy*/

with recursive org_hierarcy as (
select employee_id,manager_id,1 as lvl
from employee
where manager_id is null
union all

select e.employee_id,e.manager_id, lvl+1
from employee e
join org_hierarcy o
on o.employee_id = e.manager_id)


select * from org_hierarcy
