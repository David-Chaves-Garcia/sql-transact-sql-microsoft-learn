SELECT p.ProductID, p.Name, p.ListPrice
FROM SalesLT.Product AS p
WHERE   p.ListPrice >
	(SELECT AVG(UnitPrice)
	FROM SalesLT.SalesOrderDetail AS od) 
ORDER BY p.ProductID