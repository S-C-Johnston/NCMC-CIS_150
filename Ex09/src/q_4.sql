USE MyGuitarShop;

SELECT c.LastName,
c.FirstName,
o.OrderDate,
p.ProductName,
oi.ItemPrice,
oi.DiscountAmount,
oi.Quantity
FROM Customers AS c
JOIN Orders AS o ON c.CustomerID = o.CustomerID
JOIN OrderItems AS oi ON o.OrderID = oi.OrderID
JOIN Products AS p ON oi.ProductID = p.ProductID
ORDER BY c.LastName, o.OrderDate, p.ProductName;
