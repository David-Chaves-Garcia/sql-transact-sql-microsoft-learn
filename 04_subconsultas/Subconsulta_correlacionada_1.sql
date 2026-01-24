-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Subqueries
-- Descripción: Comprender uso de Subqueries
-- Objetivo : Obtener coste, precio de venta recomendado y media del precio de venta
-- para cada producto

SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice ,
	(SELECT  AVG(o.UnitPrice) -- la subconsulta en este caso va en el statement SELECT
	FROM SalesLT.SalesOrderDetail AS o
	WHERE p.productID= o.ProductID) AS AvgSellingPrice
FROM SalesLT.Product AS p
Order by P.ProductID

-- La subconsulta es correlacionada ya que en el WHERE hace referencia a la consulta externa
