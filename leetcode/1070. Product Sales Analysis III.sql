--1070. Product Sales Analysis III

--https://leetcode.com/problems/product-sales-analysis-iii/

SELECT 
    s.product_id, 
    s.year AS first_year, 
    s.quantity, 
    s.price
FROM 
    Sales s
INNER JOIN (
    SELECT 
        product_id, 
        MIN(year) as min_year
    FROM Sales
    GROUP BY product_id
) AS first_year_sales ON s.product_id = first_year_sales.product_id AND s.year = first_year_sales.min_year

