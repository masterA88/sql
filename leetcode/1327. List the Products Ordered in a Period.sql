--1327. List the Products Ordered in a Period

--https://leetcode.com/problems/list-the-products-ordered-in-a-period/


SELECT P.product_name, SUM(O.unit) AS unit
FROM Products P
LEFT JOIN Orders O
ON P.product_id = O.product_id
WHERE MONTH(O.order_date) = 2 AND YEAR(O.order_date) = 2020
GROUP BY P.product_name
HAVING SUM(O.unit) >= 100;

