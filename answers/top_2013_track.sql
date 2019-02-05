SELECT "Track Name", MAX("Total") FROM (
SELECT Track.Name as "Track Name", COUNT(*) as "Total" FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
WHERE Invoice.InvoiceDate BETWEEN "2013-01-02 00:00:00" AND "2013-12-22 00:00:00"
GROUP BY Track.Name
)