/*55 Get employees with salary in the top 10 % in their department*/

select employee_id,department_id,salary
from (select *,ntile() over(partition by department_id order by salary desc) as top_salary
from employee) x
where x.top_salary=1
