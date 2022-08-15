USE SalesDB;

SELECT (c.FirstName + ' ' + c.Lastname) AS CustomerName,
(e.FirstName + ' ' + e.LastName) AS EmployeeName,
ProductName,
ProductCost,
TotalPurchase
FROM ( --Subquery for the products-sales join
	SELECT
	p.Name AS ProductName,
	p.Price AS ProductCost,
	(p.Price * s.Quantity) AS TotalPurchase
	FROM Products p
	JOIN Sales s ON s.ProductID = p.ProductID
	WHERE SalesID = 31
) AS PurchasedProductDetails,
Customers c
JOIN Sales s ON c.CustomerID = s.CustomerID
JOIN Employees e ON e.EmployeeID = s.SalesPersonID
WHERE SalesID = 31;
