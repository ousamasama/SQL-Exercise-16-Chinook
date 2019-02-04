SELECT Track.Name as "Track Name" , Album.Title as "Album Title", Genre.Name as "Genre", MediaType.Name as "Media Type" FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON MediaType.MediaTypeId = Track.MediaTypeId