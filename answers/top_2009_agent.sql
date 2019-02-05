SELECT "First Name", "Last Name", MAX("Total") FROM (
SELECT Employee.FirstName as "First Name", Employee.LastName as "Last Name", SUM(Total) as "Total" FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE Invoice.InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2009-12-26 00:00:00"
GROUP BY Employee.EmployeeId );