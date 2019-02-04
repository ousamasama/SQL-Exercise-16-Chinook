SELECT InvoiceId, Track.Name, Artist.Name FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId
JOIN Album ON Album.AlbumId = Track.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId