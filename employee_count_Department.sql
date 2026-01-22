/*
4)Count employees in each department having more than 5 employees.*/

select department_id,count(*) as num_employee
from employee
group by department_id
having (count(*)>5); 
