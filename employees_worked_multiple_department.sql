/*47 Find employees who have worked for multiple departments over time.*/

/*option 1 - Return just the employees who changed departments*/


SELECT employee_id
FROM employee
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 1;

/*option 2 - Return the employee + all departments they’ve worked in*/


SELECT employee_id, department_id
FROM employee
WHERE employee_id IN (
  SELECT employee_id
  FROM employee
  GROUP BY employee_id
  HAVING COUNT(DISTINCT department_id) > 1
)
ORDER BY employee_id, department_id;


/*option 3 (no IN subquery) — using a window function*/

select employee_id,department_name
from
(select employee_id,department_id,count(distinct department_id) over(partition by employee_id) as depart_cnt 
from employee) depart_count_total
where depart_cnt >1
order by employee_id, department_id

