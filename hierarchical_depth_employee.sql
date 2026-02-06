/*29 Detect hierarchical depth of each employee in the org chart*/

With recursive hier_chart AS 
( select id,name,manager_id ,1 as level
  from employee 
  where manager is null
  union all 
  select  id,name,manager_id , level+1 
  from employee e 
  join hier_char hc on e.manager_id = hc.id
)
