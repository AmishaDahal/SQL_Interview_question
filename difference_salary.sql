/*18
Write a query to calculate the difference between current row and previous row's salary (lag function)*/

select salary, salary - lag(salary) over(order by id) as diff_salary
from employee
