SELECT 
    ROUND(SUM(Sales_Amount), 2) AS total_revenue
FROM sales;

SELECT 
    COUNT(DISTINCT Customer_ID) AS total_customers
FROM sales;

SELECT 
    COUNT(DISTINCT Order_ID) AS total_orders
FROM sales;
