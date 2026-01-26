-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Funciones Integradas
-- Descripción: Comprender uso de Funciones Integradas (de agregado)
-- Objetivo : Obtener el número total de ventas para cada producto donde ListPrice sea > 1000
-- y donde el número total de ventas del producto sea > 20

SELECT p.Name, SUM(od.OrderQty) AS TotalSales
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS od
	ON p.ProductID= od.ProductID
WHERE p.ListPrice>1000 -- Filtra antes de hacer agrupaciones
GROUP BY p.Name
HAVING SUM(od.OrderQty)>20 -- Filtra los grupos una vez constituídos (siempre después de GROUP BY)
ORDER BY TotalSales DESC
