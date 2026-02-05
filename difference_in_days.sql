/*26 write a query to find the difference in days between two dates in the same table.*/

if have only one date column 

SELECT
  id,
  join_date,
  LAG(join_date) OVER (ORDER BY id) AS prev_date,
  DATEDIFF(join_date, LAG(join_date) OVER (ORDER BY id)) AS diff_days
FROM projects;

if have both start and end date

select id ,datediff(end_date,start_date) as days_difference
from projects;
