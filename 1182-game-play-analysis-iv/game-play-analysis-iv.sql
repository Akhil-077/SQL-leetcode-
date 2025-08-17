# Write your MySQL query statement below
WITH first_login AS (
    SELECT 
        player_id,
        MIN(event_date) AS first_date
    FROM 
        Activity
    GROUP BY 
        player_id
),
players_logged_in_next_day AS (
    SELECT 
        COUNT(DISTINCT a.player_id) AS next_day_logins
    FROM 
        Activity a
    INNER JOIN 
        first_login f ON a.player_id = f.player_id
    WHERE 
        DATEDIFF(a.event_date, f.first_date) = 1
)
SELECT 
    ROUND(
        IFNULL(
            (SELECT next_day_logins FROM players_logged_in_next_day) / 
            (SELECT COUNT(DISTINCT player_id) FROM Activity)
        , 0)
    , 2) AS fraction;