--Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT
    t.Name AS TrackName,
    a.Title AS AlbumName,
    mt.Name AS MediaType,
    g.Name AS Genre
FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
ORDER BY AlbumName, TrackName;