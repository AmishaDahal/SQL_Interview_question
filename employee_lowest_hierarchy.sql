/* 49 Write a query to find all employees who are at the lowest level in the hierarchy */

select e.employee_id,e.employee_name,sub.employee_id as sub_coordinate
from employee e
left join employee sub 
on sub.manager_id = e.employee_id
where sub.emoplyee_id is null 


/*using recursive CTE*/

With recursive lowest_level
As(select employee_id,manager_id,1 as level
from employee 
where manager_id is null 
union all
select employee_id,manager_id,level+1
from employee e
join lowest_level ll 
on e.manager_od = ll.employee_id 
) ,

max_level as (
select max(level) as mx from lowest_level) 

select ll.employee_id,ll.name,ll.level
from lowest_level ll
join max_level m 
on ll.level=m.max
ordr by ll.employee_id ;
