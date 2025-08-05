# Write your MySQL query statement below
select E1.name AS employee FROM employee E1
JOIN employee E2 ON E1.managerID = E2.id
WHERE E1.salary > E2.salary;