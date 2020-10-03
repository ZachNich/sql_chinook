--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT COUNT(*) AS TotalInvoices, i.BillingCountry
FROM Invoice i
GROUP BY BillingCountry;