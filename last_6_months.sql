/* 
5) Find the employees who joined in the last 6 months.*/

select employee_id,
from employee
where join_date >=current_date-Interval '6 month'
