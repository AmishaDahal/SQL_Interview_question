/*79 Write a query to find the employee(s) who have never received a promotion.*/

select employee_id
from employee_table e1
left join promotions p
on e1.employee_id = p.employee_id
where p.employee_id is null ;
