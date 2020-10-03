--Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT
    e.FirstName || ' ' || e.LastName AS FullName,
    i.* 
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
ORDER BY FullName;