SELECT 
    Month,
    ROUND(SUM(Sales_Amount), 2) AS monthly_revenue
FROM sales
GROUP BY Month
ORDER BY Month;
