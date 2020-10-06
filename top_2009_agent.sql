--Which sales agent made the most in sales in 2009?

SELECT 
    ROUND(SUM(i.Total), 2) AS TotalSales,
    e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId AND i.InvoiceDate LIKE '2009%'
GROUP BY SalesAgent;

SELECT
    s.SalesAgent AS SalesAgent
FROM (
    SELECT 
        ROUND(SUM(i.Total), 2) AS TotalSales,
        e.FirstName || ' ' || e.LastName AS SalesAgent,
        i.InvoiceId
    FROM Employee e
    JOIN Customer c ON c.SupportRepId = e.EmployeeId
    JOIN Invoice i ON i.CustomerId = c.CustomerId AND i.InvoiceDate LIKE '2009%'
    GROUP BY SalesAgent
) s
WHERE s.TotalSales = 
    (SELECT MAX(s.TotalSales) AS TopSales
     FROM Invoice i1
     WHERE i1.InvoiceId = s.InvoiceId);