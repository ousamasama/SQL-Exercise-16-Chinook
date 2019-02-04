SELECT Playlist.Name, COUNT(*) FROM PlaylistTrack
JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.Name