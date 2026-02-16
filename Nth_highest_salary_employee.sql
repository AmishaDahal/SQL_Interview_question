/*68 Retrieve the Nth highest salary from the employees table.*/

select distinct salary 
from employee
order by salary desc
limit 1 offset N-1;

or 

with rank as (
select * ,Dense_rank() over (order by salary desc) as salary_Rank
from employee)

select employee,salary
from rank 
where salary_Rank = nth
