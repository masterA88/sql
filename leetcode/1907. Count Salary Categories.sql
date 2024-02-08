--1907. Count Salary Categories

--https://leetcode.com/problems/count-salary-categories/


SELECT 'Low Salary' as category, COUNT(*) as accounts_count
FROM Accounts
WHERE income < 20000
UNION ALL
SELECT 'Average Salary', COUNT(*)
FROM Accounts
WHERE income BETWEEN 20000 AND 50000
UNION ALL
SELECT 'High Salary', COUNT(*)
FROM Accounts
WHERE income > 50000