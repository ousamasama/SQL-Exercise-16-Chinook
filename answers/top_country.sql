SELECT "Country", MAX("Total") FROM (
SELECT BillingCountry as "Country", SUM(Total) as "Total" FROM Invoice
GROUP BY Invoice.BillingCountry )

-- OR

SELECT BillingCountry, SUM(Total) as "Total" FROM Invoice
GROUP BY Invoice.BillingCountry
ORDER BY "Total" DESC