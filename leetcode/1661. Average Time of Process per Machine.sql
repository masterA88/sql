--1661. Average Time of Process per Machine

--https://leetcode.com/problems/average-time-of-process-per-machine/


SELECT machine_id, ROUND(AVG(process_time), 3) AS processing_time
FROM (
    SELECT machine_id,
           SUM(CASE WHEN activity_type = 'end' THEN timestamp ELSE -timestamp END) AS process_time
    FROM Activity
    GROUP BY machine_id, process_id
) AS process_times
GROUP BY machine_id;