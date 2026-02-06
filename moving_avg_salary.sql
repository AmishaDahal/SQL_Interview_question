/*27 Calculate the moving average of salaries over the last 3 employees ordered by hire date*/

select employee,
avg(salary) over(order by start_date rows between 2 Preceding and current row) as moving_avg
from employee;
