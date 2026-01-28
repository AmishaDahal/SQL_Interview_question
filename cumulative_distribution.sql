/*13 Calculate cumulative distribution(CDF) of salaries.*/

select name,salary,
CUME_DIST() OVER(order by salary) as salary_cdf
from employees;
