# Write your MySQL query statement below
select class from courses
Group by class
Having count(student)>= 5;

