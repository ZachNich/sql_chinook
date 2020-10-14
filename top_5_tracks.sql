--Provide a query that shows the top 5 most purchased tracks over all.

SELECT TrackName
FROM (
    WITH track_sales AS (
        SELECT
            t.Name AS TrackName,
            COUNT(t.Name) * il.quantity AS AmountSold
        FROM Invoice i
        JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
        JOIN Track t ON t.TrackId = il.TrackId
        GROUP BY TrackName
    )
    SELECT
        TrackName,
        ROW_NUMBER() OVER (ORDER BY AmountSold DESC) as rnk
    FROM track_sales
)
WHERE rnk <= 5;