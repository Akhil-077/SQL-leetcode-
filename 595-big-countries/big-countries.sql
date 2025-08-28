# Write your MySQL query statement below
select name,population, area
from World
where Area >= 3000000
or Population >= 25000000
order by name;