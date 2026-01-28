/*11 Recursive Query to find the full reporting chain for each employee.*/


syntax
WITH [RECURSIVE] CTE_NAME AS
(
  SELECT QUERY (NON RECURSIVE QUERY OR THE BASE QUERY)
  UNION [ALL]
  SELECT QUERY (RECURSIVE QUERY USING CTE_NAME [WITH A TERMINATION CONDITION]
)
SELECT * FROM CTE_NAME


with recursive  employee_report As
( select id,name,manager_id, 1 As level
   from employee
   union all
    select e.id,e.manager_name, er.level+1
    from employee as e
    join employee_Report as er
    on e.id = er.manager_id)
select * from employee_report 
order by level, id
