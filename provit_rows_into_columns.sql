/*31 write a query to provit rows into columns dynamically (if dynamic pivot is not supported,simulate it for fixed values)*/

select department_id,sum(case when job_title ='Manager' then 1 else 0 end) as managers,
sum(case when job_title ='Devloper' then 1 else 0 end) as Developers,
sum(case when job_title ='Tester' then 1 else 0 end) as tester 
from employees
group by department_id;
