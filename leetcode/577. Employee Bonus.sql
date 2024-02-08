--577. Employee Bonus

--https://leetcode.com/problems/employee-bonus/

SELECT E.name, B.bonus
FROM Employee AS E
LEFT JOIN Bonus AS B ON E.empId = B.empId
WHERE B.bonus IS NULL OR B.bonus < 1000;