--Provide a query that shows total sales made by each sales agent.

SELECT 
    e.FirstName || ' ' || e.LastName AS SalesAgent,
    ROUND(SUM(i.Total), 2) AS TotalSales
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY SalesAgent
ORDER BY SalesAgent;