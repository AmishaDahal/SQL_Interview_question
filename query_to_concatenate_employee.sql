/* 65 Write a query to concatenate employee names in each department (string aggregation)*/

select department_id, Group_Concat(distinct employee_name order by employee_name Separator ',') as employee_name
from employee
group by department_id
