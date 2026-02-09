/*42 list employees whose names start and end with the same letter.*/

select employee_id,employee_name
from employee
where left(name,1)=right(name,1)
