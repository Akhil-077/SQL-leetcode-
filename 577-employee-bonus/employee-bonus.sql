# Write your MySQL query statement below
select E.name, B.bonus from employee as E
left join bonus as B on E.empId = B.EmpID
where b.bonus < 1000 or b.bonus IS NULL;
