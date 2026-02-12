/*60 Write A query to get employees who reported directly or indirectly to a given manager (hierarchy traversal).*/

With Recursive Reporting As
(select employee_id,employee_name,manager_id
from employee
where manager_id = given_manager_id
)
union all 
select e.employee_id,e.employee_name,e.manager_id
from employee e
join reporting r
on e.manager_id = r.employee_id
)

select * from reporting 
