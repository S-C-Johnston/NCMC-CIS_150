USE SalesDB;

SELECT (c.FirstName + ' ' + c.LastName) AS CustomerName,
(e.FirstName + ' ' + e.LastName) AS EmployeeName
FROM Employees e
JOIN Sales s ON s.SalesPersonID = e.EmployeeID
/* Need to join on the common fulcrum point in the middle. This way, Employees
* and Customers can individually join on Sales for their respective values,
* and we can still query the appropriate fields. A UNION... didn't work. */
JOIN Customers c ON s.CustomerID = c.CustomerID
WHERE SalesID = 23;
