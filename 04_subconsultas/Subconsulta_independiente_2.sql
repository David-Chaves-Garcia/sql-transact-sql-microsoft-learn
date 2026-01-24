-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Subqueries
-- Descripción: Comprender uso de Subqueries
-- Objetivo : Obtener los productos cuyo precio de venta recomendado sea 100 o más
-- y haya sido vendido por menos de 100

SELECT p.ProductID, p.Name, p.ListPrice
FROM SalesLT.Product AS p
WHERE p.ProductID IN
	(SELECT p.ProductID
	FROM SalesLT.SalesOrderDetail AS od
	WHERE od.UnitPrice < 100.00)
AND p.ListPrice >= 100.00
ORDER BY p.ProductID

-- Es una subquery independiente
