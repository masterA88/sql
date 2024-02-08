--1204. Last Person to Fit in the Bus

--https://leetcode.com/problems/last-person-to-fit-in-the-bus/

SELECT person_name
FROM (
    SELECT person_name,
           SUM(weight) OVER (ORDER BY turn) as cumulative_weight
    FROM Queue
) as WeightedQueue
WHERE cumulative_weight <= 1000
ORDER BY cumulative_weight DESC
LIMIT 1

