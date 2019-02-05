SELECT "First Name", "Last Name", MAX("Total") FROM (
SELECT Employee.FirstName as "First Name", Employee.LastName as "Last Name", SUM(Total) as "Total" FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId );