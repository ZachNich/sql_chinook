--Which sales agent made the most in sales in 2009?

SELECT
    SalesAgent,
    MAX(TotalSales) as Total
FROM (
    SELECT 
        ROUND(SUM(i.Total), 2) AS TotalSales,
        e.FirstName || ' ' || e.LastName AS SalesAgent,
        i.InvoiceId
    FROM Employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId AND i.InvoiceDate LIKE '2009%'
    GROUP BY SalesAgent
);