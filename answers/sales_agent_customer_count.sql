SELECT Employee.FirstName, Employee.LastName, COUNT(*) FROM Customer
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId