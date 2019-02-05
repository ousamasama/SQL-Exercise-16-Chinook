SELECT BillingCountry, SUM(Total) FROM Invoice
GROUP BY Invoice.BillingCountry