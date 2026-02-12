/*58 Write a recursive query to calculate factorial of number 5 */

with recursive factorial(n,fact)  

As( select 1,1)
union all
select n+1,fact *(n+1)
from factorial
where n<5
)
select fact from factorial
where n = 5 ;
