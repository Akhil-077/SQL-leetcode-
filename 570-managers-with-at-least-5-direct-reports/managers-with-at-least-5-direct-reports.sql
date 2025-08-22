# Write your MySQL query statement below
 select e.name from employee as e
 join(select managerId from employee 
 group by managerID
 having count(managerId) >=5) as T
 on e.ID = T.managerID