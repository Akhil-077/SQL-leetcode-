# Write your MySQL query statement below
WITH all_ids AS (
  SELECT requester_id AS id FROM RequestAccepted
  UNION ALL
  SELECT accepter_id   AS id FROM RequestAccepted
),
counts AS (
  SELECT id, COUNT(*) AS num
  FROM all_ids
  GROUP BY id
)
SELECT id, num
FROM counts
WHERE num = (SELECT MAX(num) FROM counts);