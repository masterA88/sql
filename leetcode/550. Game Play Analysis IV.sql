--550. Game Play Analysis IV

--https://leetcode.com/problems/game-play-analysis-iv/

WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) as first_login_date
    FROM Activity
    GROUP BY player_id
)

SELECT 
    ROUND(
        -- Count the distinct number of players who logged back in exactly one day after their first login
        COUNT(DISTINCT a.player_id) / 
        -- Divide by the total distinct number of players
        (SELECT COUNT(DISTINCT player_id) FROM FirstLogin),
        2
    ) AS fraction
FROM Activity a
-- Join with the FirstLogin CTE to check if there is an event date exactly one day after the first login date
INNER JOIN FirstLogin fl ON a.player_id = fl.player_id
WHERE a.event_date = DATE_ADD(fl.first_login_date, INTERVAL 1 DAY)