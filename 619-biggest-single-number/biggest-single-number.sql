# Write your MySQL query statement below
Select max(num) as num 
from (select num
from mynumbers
group by num
Having count(num) = 1
) As singles;