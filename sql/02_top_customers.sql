SELECT 
    Customer_ID,
    ROUND(SUM(Sales_Amount), 2) AS total_revenue
FROM sales
GROUP BY Customer_ID
ORDER BY total_revenue DESC
LIMIT 10;
