# Write your MySQL query statement below
WITH RankedSalaries AS (
    SELECT
        e.name,
        e.salary,
        e.departmentId,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS rnk
    FROM
        Employee e
)
SELECT
    d.name AS Department,
    rs.name AS Employee,
    rs.salary AS Salary
FROM
    RankedSalaries rs
JOIN
    Department d ON rs.departmentId = d.id
WHERE
    rs.rnk <= 3;