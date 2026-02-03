
/*23 Find departments with the highest average salary.*/

With Avg_salary As (
select department_id,avg(Salary) as avg_salary
from employees
group by department_id)

select department_id,avg_salary
from avg_salary
where avg_salary = select max(avg_salary) from avg_salary; 

or select department_id,avg(Salary) as avg_salary
from employee
group by department_id
order by avg_salary desc
limit 1;
