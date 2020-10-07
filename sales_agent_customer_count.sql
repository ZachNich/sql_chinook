--Provide a query that shows the count of customers assigned to each sales agent.

SELECT
    e.FirstName || ' ' || e.LastName AS SalesAgent,
    COUNT(c.SupportRepId) AS CustomerCount
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY SalesAgent;