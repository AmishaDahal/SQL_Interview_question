/*76. Write a query to generate a calendar table with all dates for the current year.*/

With Recursive calendar as 
(select Date(concat(Year(CURDATE()),'-01-01')) as cal_Date
union all
select cal_Date + Interval 1 Day 
from calendar
where cal_date < Date(concat(Year(CURDATE()),'-12-31'))

select cal_Date
from calendar;
