--Which sales agent made the most in sales over all?

SELECT
    SalesAgent,
    MAX(TotalSales) AS TopSales
FROM (
    SELECT 
        e.FirstName || ' ' || e.LastName AS SalesAgent,
        ROUND(SUM(i.Total), 2) AS TotalSales
    FROM Employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId
    GROUP BY SalesAgent
);