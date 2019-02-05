SELECT MediaType.Name, COUNT(*) as "Total" FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY Track.MediaTypeId