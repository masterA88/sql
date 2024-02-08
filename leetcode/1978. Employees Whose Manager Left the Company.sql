--1978. Employees Whose Manager Left the Company

--https://leetcode.com/problems/employees-whose-manager-left-the-company/


SELECT employee_id
FROM Employees E
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND NOT EXISTS (SELECT 1 FROM Employees M WHERE M.employee_id = E.manager_id)
ORDER BY employee_id;