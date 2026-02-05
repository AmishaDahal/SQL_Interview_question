/*25 Find employees who don't have a department assigned .*/
select employee_id,department_name
from employee e1 
left join department d1
on e1.department_id = d1.id
where departname_name is null ;


or 

select * from employee where department_id is null ;
