--Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT
    t.Name AS Track,
    a.Name AS Artist,
    il.*
FROM Track t
JOIN InvoiceLine il ON il.TrackId = t.TrackId
JOIN Album ON Album.AlbumId = t.AlbumId
JOIN Artist a ON a.ArtistId = Album.ArtistId;