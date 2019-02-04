SELECT FirstName, LastName, Invoice.InvoiceDate, Invoice.InvoiceId, Invoice.BillingCountry FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Customer.Country = "Brazil"