--Which country's customers spent the most?

SELECT
    Country,
    MAX(TotalSales) AS TopSales
FROM (
    SELECT
        ROUND(SUM(i.Total), 2) AS TotalSales,
        i.BillingCountry AS Country
    FROM Invoice i
    GROUP BY Country
);