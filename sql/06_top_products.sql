SELECT
    Product_ID,
    Category,
    ROUND(SUM(Sales_Amount), 2) AS total_revenue,
    SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Product_ID, Category
ORDER BY total_revenue DESC
LIMIT 10;
