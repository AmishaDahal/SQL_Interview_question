/*66 Find employees whose salary is above the average salary of their department but below the company-wide average.*/


With company_avg_Salary as
(select avg(salary) as comapy_avg
from employee),

department_avg as 
(select  department_id,avg(salary)  as depart_avg
from employee
group by department_id)

select employee_id,employee_name
from employee
where salary > (Select depart_avg from department_avg) and salary <(select comapy_avg from company_avg_Salary)

or 
select employee_id,employee_name,department_id,
from
(select *, avg(salary) over() as company_wise_Avg,
avg(salary) over(partition by department_id) as dept_avg
from employee e) avg_Details
where salary >dept_avg and salary < company_wise_Avg;
