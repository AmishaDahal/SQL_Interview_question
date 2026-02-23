
/*89. Write a query to find employees who have the same hire date as their managers.*/

Select employee_id ,manager_id,e.hire_date
from employee e
join employee m on 
e.manager_id =m.id
where e.hire_date = m . hire_Date;
