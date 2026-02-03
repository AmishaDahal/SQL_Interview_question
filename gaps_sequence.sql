
/*12 Write a query to find gaps in a sequence of numbers (missing IDS)*/

solution 1 - 

Select generate_series(min(ID),max(ID)
from employee
except 
select ID from employee

Solution 2 - Recursive 

With recursive Missing_id As 
(select min(ID) from employee as n 
union 
select (n+1) as n from Missing_id
where n <(select max(id) from employee)

select * from Missing_id

except 
select id from employee
 
solution 3 - return only the first missing after each existing id

select (id+1) As missing_id
from employee e1
where Not Exists (select id from employee e2 where e2.id = e1.id+1)

