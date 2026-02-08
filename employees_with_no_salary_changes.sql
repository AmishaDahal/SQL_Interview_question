/* 40 find the employees with no salary changes in the last 2 years*/

select employee_id, salary
from employee_salary e 
left join employee_Salary_history esh
on e.id = esh.employee_id
and esh.change_date>= current_Date- interval '2years'
where esh.employee_id is null ;
