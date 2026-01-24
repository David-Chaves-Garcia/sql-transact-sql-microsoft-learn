-- Curso: Microsoft Learn - Transact-SQL
-- Tema: SELF JOIN
-- Descripción: Comprender uso de SELF JOIN (JOIN en en la misma tabla)
-- Objetivo : Entregar una lista de la información de producto por categoría y subcategoría (hacer un catálogo de producto)

SELECT ppc.Name AS CategoryName, pc.Name AS SubcategoryName, p.Name AS ProductName
FROM SalesLT.ProductCategory AS pc
INNER JOIN SalesLT.ProductCategory AS ppc
	ON ppc.ProductCategoryID= pc.ParentProductCategoryID -- Ambos ID están en la misma tabla, ParentProductCategoryID está entre los valores de Product CategoryID
INNER JOIN SalesLT.Product AS p -- Hacemos JOIN con la tabla Product de la que queremos el nombre del producto
	ON pc.ProductCategoryID= p.ProductCategoryID
ORDER BY CategoryName, SubcategoryName, ProductName

-- En este caso usamos INNER JOIN para la primera unión porque solo queremos subcategorías que tienen categoría
-- El segundo INNER JOIN es utilizado porque solo queremos ver productos que tienen categoría y subcategoría.
-- Hubiera dado el mismo resultado con LEFT JOIN para el segundo JOIN porque todos los productos tienen categoría y subcategoría

