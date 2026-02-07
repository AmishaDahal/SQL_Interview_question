/*35 identify employees who haven't received a salary raise in more than a year .*/

Select employee_id
from employee e
join employee_salary_history esh
on e.id = esh.id
group by  employee_id
having max(sh.raise_Date)<current_date-Interval '1 year'
