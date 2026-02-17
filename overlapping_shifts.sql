/*. 77 Write a query to identify overlapping shifts for employees.*/

select s1.employee_id,s1.shift_id as shift 1 ,s2.shift_id as shift 2
from shifts s1
join shifts s2 on s1.employee_id = s2.employee_id and s1.shift_id<> s2.shift_id
where s1.start_Date<s2.end_date and s1.end_time>s2.start_time
