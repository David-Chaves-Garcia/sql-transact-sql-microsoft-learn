-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Subqueries
-- Descripción: Comprender uso de Subqueries
-- Objetivo : Obtener los productos cuyo precio de venta recomendado es mayor
-- que el precio medio de venta real.

SELECT p.ProductID, p.Name, p.ListPrice
FROM SalesLT.Product AS p
WHERE   p.ListPrice >
	(SELECT AVG(UnitPrice)
	FROM SalesLT.SalesOrderDetail AS od) 
ORDER BY p.ProductID

-- Se utilizan Subconsultas independientes en este ejercicio. La subconsulta interior no hace referencia
-- a la consulta exterior
