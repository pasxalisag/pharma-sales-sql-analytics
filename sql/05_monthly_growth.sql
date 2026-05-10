SELECT
    Month,
    ROUND(SUM(Sales_Amount), 2) AS monthly_revenue,

    ROUND(
        (
            SUM(Sales_Amount) -
            LAG(SUM(Sales_Amount)) OVER (ORDER BY Month)
        )
        * 100.0
        /
        LAG(SUM(Sales_Amount)) OVER (ORDER BY Month),
    2) AS mom_growth_pct

FROM sales
GROUP BY Month
ORDER BY Month;
