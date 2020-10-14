--Provide a query that shows the most purchased track of 2013.

WITH best_2013_track_cte AS (
    SELECT
        t.Name AS TrackName,
        COUNT(t.Name) AS TrackCount
    FROM Invoice i
    JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    WHERE i.InvoiceDate LIKE '2013%'
    GROUP BY t.Name
)
SELECT
    TrackName
FROM best_2013_track_cte
WHERE TrackCount = (SELECT MAX(TrackCount) FROM best_2013_track_cte);