USE SalesDB;

SELECT COUNT(*) AS CustomersNamedSmith
FROM Customers
WHERE LastName = 'Smith';
