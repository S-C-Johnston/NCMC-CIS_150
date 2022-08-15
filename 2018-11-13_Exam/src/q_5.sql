USE SalesDB;

SELECT FirstName, LastName
FROM Customers c
JOIN Sales s ON s.CustomerID = c.CustomerID
WHERE SalesID = 17;
