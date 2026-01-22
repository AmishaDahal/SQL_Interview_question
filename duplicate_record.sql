/*
2) Find duplicate records in a table. 
*/

select emp_name,count(*)
from employee
group by emp_name
having (count(*)>1);
