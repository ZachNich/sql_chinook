--What are the respective total sales for each of those years (2009, 2011)?

SELECT ROUND(SUM(i.Total), 2)
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%'
OR i.InvoiceDate LIKE '2011%';