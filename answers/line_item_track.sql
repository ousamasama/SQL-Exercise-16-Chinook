SELECT InvoiceId, Track.Name FROM InvoiceLine
JOIN Track ON Track.TrackId = InvoiceLine.TrackId