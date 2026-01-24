SELECT p.ProductID, p.Name, p.ListPrice
FROM SalesLT.Product AS p
WHERE p.ProductID IN
	(SELECT p.ProductID
	FROM SalesLT.SalesOrderDetail AS od
	WHERE od.UnitPrice < 100.00)
AND p.ListPrice >= 100.00
ORDER BY p.ProductID