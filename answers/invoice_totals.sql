SELECT Total, BillingCountry, Customer.FirstName as "Cust. First Name", Customer.LastName as "Cust. Last Name", Employee.FirstName as "Emp. First Name", Employee.LastName as "Emp. Last Name" FROM Invoice
JOIN Customer ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId