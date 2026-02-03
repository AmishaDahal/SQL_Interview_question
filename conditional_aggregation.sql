/*17 
write a query to perform a conditional aggregation count(males) females in each department.*/

select department_id,
count(case when gender = 'Male' then 1 end) as male_count,
count(case when gender = 'Female' then 1 ) as female_count
from employee
group by department_id

solution two 
select department_id
sum(case when gender = 'Male' then 1 end over(partition by department) as male_count,
sum(case when gender = 'Female' then 1 end over(partition by department) as male_count,
from employee
group by department_id
