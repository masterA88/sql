--619. Biggest Single Number

--https://leetcode.com/problems/biggest-single-number/



WITH Counts AS (
    SELECT num, COUNT(*) AS count
    FROM MyNumbers
    GROUP BY num
)
SELECT MAX(num) AS num
FROM Counts
WHERE count = 1;