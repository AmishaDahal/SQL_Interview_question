/* 75. Write a query to find employees who have the longest tenure within their department */


with tenure as (
select *, Rank() over (partition by department_id order by hire_Date Asc)as tenure_rank
from employee)

select * from tenure
where tenure_rank  1;
