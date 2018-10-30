USE MyGuitarShop;

SELECT DISTINCT pa.ProductName AS ProductA,
pa.ListPrice,
pb.ProductName AS ProductB
FROM Products pa
INNER JOIN Products pb ON pa.ListPrice = pb.ListPrice
AND pa.ProductID < pb.ProductID /*Both checks for duplicate IDs and prevents
any functionally duplicate records where row1.ProductA = row2.ProductB Pretty
stupid/simple solution, but I feel even more stupid for not thinking of it
myself. As per this SO answer https://stackoverflow.com/a/14305030 */
ORDER BY ProductA;
