--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
    t.Name,
    t.Composer,
    il.*
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId;