--1789. Primary Department for Each Employee

--https://leetcode.com/problems/primary-department-for-each-employee/

SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
   OR (employee_id, department_id) IN (
       SELECT employee_id, department_id
       FROM Employee
       GROUP BY employee_id
       HAVING COUNT(*) = 1
   );