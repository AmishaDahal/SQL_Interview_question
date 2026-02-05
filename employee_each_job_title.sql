/*24 write a query to find the number of employees in each job title */

select job_title,count(*)
from employees
group by job_title;
