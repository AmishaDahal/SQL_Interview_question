/*86. Write a query to identify “gaps and islands” in attendance records (consecutive dates present).*/


with attendece_group as 
(Select employee_id,attendance_Date,datediff(attendance_date,Row_Number() over(partition by employee_id order by attendance_date) as grp
from attendance)

select employee_id,min(attendence_date) as start,max(attendence_date) as end,
max(attendence_date) as end_date,count(*) as consecutivedays
from attendence_group
grpup by employee_id,grp
order by employee_id,start
