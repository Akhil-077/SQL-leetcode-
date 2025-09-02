# Write your MySQL query statement below
select s.name
from salesperson as s
where s.sales_id NOT IN (select o.sales_id from orders AS o
left join Company As c on o.com_id = c.com_id
where c.name = 'Red');