/*53 Find an employee who never made sale*/

select employee_id
from employee e
left join sales s
on e.employee_id =sales.employee_id
where sales.sale_id is null;
