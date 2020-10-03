--How many Invoices were there in 2009 and 2011?

SELECT COUNT(*) FROM Invoice
WHERE Invoice.InvoiceDate LIKE '2009%' OR Invoice.InvoiceDate LIKE '2011%';