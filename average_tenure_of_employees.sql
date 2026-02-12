/* 54 Find the average tenure of employees by department*/

select department_id,avg(timestampdiff(year,hire_date,Curdate())) as avg_tenure_years
from employee
group by department_id;
