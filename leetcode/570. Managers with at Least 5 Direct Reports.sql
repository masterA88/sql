--570. Managers with at Least 5 Direct Reports
--https://leetcode.com/problems/managers-with-at-least-5-direct-reports/


SELECT e.name AS ManagerName
FROM Employee e
JOIN Employee e_sub ON e.id = e_sub.managerId
GROUP BY e.id
HAVING COUNT(e_sub.id) >= 5;