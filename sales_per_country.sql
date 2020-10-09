--Provide a query that shows the total sales per country.

SELECT
    ROUND(SUM(i.Total), 2) AS TotalSales,
    i.BillingCountry AS Country
FROM Invoice i
GROUP BY Country
ORDER BY TotalSales;