/*21 Aggregate JSON data (if supported) to list all the employee names in a department as a json array .*/

select department_id,Json_Agg(name) as employee_name
from employees
group by department_id;
