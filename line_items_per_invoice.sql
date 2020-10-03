--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT 
    InvoiceId,
    COUNT(*) AS TotalItems
FROM InvoiceLine il
GROUP BY InvoiceId;