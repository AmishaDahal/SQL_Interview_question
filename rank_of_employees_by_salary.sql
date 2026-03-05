/*73. Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees.*/

WITH r AS (
  SELECT e.*,
         ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rn
  FROM employees e
)
select *,((rn-1)%10)+1 as restarting_ranking,
floor(rn-1)/10+1  as bucket
from r;
