-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Subqueries
-- Descripción: Comprender uso de Subqueries
-- Objetivo : Obtener productos con un precio de venta medio inferior al precio de coste

SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice ,
	(SELECT  AVG(o.UnitPrice)
	FROM SalesLT.SalesOrderDetail AS o
	WHERE p.productID= o.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS p
WHERE p.StandardCost > 
	(SELECT AVG(od.UnitPrice)
	FROM SalesLT.SalesOrderDetail AS od
	WHERE p.ProductID= od.ProductID) -- Esta es la línea que hace que se compruebe el ">" para cada producto
ORDER BY P.ProductID

-- En este caso es una subquery correlacionada porque hace referencia a la query exterior
