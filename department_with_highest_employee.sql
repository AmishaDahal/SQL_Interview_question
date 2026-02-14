
/*70 Show the department with the highest number of employeesand the count.*/

select department_id,count(*) as employee_count
from department
group by department_id
order by employee_count desc
limit 1

