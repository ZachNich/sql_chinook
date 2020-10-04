--Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resulant table.

--Can group by name or id, but there are duplicate names with different ids, so I've chosen to group by id instead of name here.

SELECT 
    p.Name AS PlaylistName, 
    COUNT(pt.TrackId) AS TrackCount
FROM Playlist p
LEFT JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId
ORDER BY PlaylistName;