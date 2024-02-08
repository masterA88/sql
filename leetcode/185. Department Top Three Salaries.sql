--185. Department Top Three Salaries

--https://leetcode.com/problems/department-top-three-salaries/


-- We start by selecting the columns we want in our result: Department Name, Employee Name, and Salary.
SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary

-- We join the Employee table with the Department table to get the department names.
FROM Employee e
JOIN Department d ON e.departmentId = d.id

-- To find the top three unique salaries, we use a WHERE clause with a subquery.
-- The subquery will count the distinct number of salaries that are higher than the current employee's salary within the same department.
WHERE (
    SELECT COUNT(DISTINCT salary)
    FROM Employee e2
    WHERE e2.salary > e.salary
    AND e2.departmentId = e.departmentId
) < 3

-- We order the results first by department to group the employees by their department,
-- then by salary in descending order to get the highest salaries first.
ORDER BY Department, Salary DESC;

