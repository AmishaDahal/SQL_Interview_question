/* 10) Find the login streak for 5 consecutive date */

WITH CTE AS (select *,
date_sub(login_date,interval dense_rank() over(Partition by user_id order by login_date) as login_streak
from user_login)

Select user_id,login_streak,min(login_date) as start_date,max(login_date) as end_Date
datediff(max(login_date),min(login_date))+1 as consecutive_days
from CTE
group by user_id,login_streak
having(datediff(max(login_date),min(login_date))+1) >=5
order by consecutive_days
