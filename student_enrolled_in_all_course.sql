/*33 Find student who have enrolled in all  avaialble courses*/

select student_id
from student
group by student_id
having count(distinct course_id)=select count(distinct course_id) from student
