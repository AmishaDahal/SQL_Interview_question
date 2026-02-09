/*43 write a query to detect circular references in employee_manager hierarchy (cycles)*/

with recursive manger_path(id,manager_id,path)
as (select id,manager_id,array[id]
from employee
where manager_id is null
union all 
select e.id,e.manager_id,path||e.id
from employee e
join manger_path  mp
on e.manager_id = mp.id
where not e.id = Any(path)
)
select distinct id from manager_path'
where id = any(path);
