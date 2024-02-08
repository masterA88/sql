--1633. Percentage of Users Attended a Contest

--https://leetcode.com/problems/percentage-of-users-attended-a-contest/


SELECT R.contest_id, ROUND(COUNT(DISTINCT R.user_id) / (SELECT COUNT(*) FROM Users) * 100, 2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, contest_id ASC;