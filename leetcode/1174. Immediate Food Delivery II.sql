--1174. Immediate Food Delivery II

--https://leetcode.com/problems/immediate-food-delivery-ii/

SELECT 
    ROUND(
        (SUM(CASE WHEN d.order_date = d.customer_pref_delivery_date THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
    ) AS immediate_percentage
FROM 
    (SELECT customer_id, MIN(order_date) as first_order_date
     FROM Delivery
     GROUP BY customer_id) as first_orders
JOIN 
    Delivery d ON d.customer_id = first_orders.customer_id AND d.order_date = first_orders.first_order_date

