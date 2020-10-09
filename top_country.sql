--Which country's customers spent the most?

SELECT
    Country
FROM (
    SELECT
        ROUND(SUM(i.Total), 2) AS TotalSales,
        i.BillingCountry AS Country
    FROM Invoice i
    GROUP BY Country
)
WHERE TotalSales = (SELECT MAX(TotalSales) FROM (
    SELECT
        ROUND(SUM(i.Total), 2) AS TotalSales,
        i.BillingCountry AS Country
    FROM Invoice i
    GROUP BY Country
));

SELECT
    Country,
    MAX(TotalSales)
FROM (
    SELECT
        ROUND(SUM(i.Total), 2) AS TotalSales,
        i.BillingCountry AS Country
    FROM Invoice i
    GROUP BY Country
);