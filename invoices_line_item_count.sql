--Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT
    COUNT(*) AS TotalLineItems,
    i.*
FROM Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId
ORDER BY i.InvoiceId;