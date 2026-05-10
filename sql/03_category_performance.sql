SELECT 
    Category,
    ROUND(SUM(Sales_Amount), 2) AS total_revenue
FROM sales
GROUP BY Category
ORDER BY total_revenue DESC;
