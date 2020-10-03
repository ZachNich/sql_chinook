--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT 
    i.Total,
    c.FirstName || ' ' || c.LastName AS Customer,
    c.Country,
    e.FirstName || ' ' || e.LastName AS SalesAgent
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId
ORDER BY Customer;