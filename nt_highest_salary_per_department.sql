
/*91 Write a query to get the nth highest salary per department.*/

Select department_id,salary
from (select department,salary,row_number () over(partition by department order by salary desc)
as rn
from employee) sub 
where rn =nth
