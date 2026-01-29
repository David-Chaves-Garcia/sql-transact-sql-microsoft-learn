-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos

-- Objetivo Consulta 1 :Actualizar el precio de los productos cuya categoría
-- sea 'Bells and Horns', aumentándolo un 10% del precio que tienen actualmente.

UPDATE SalesLT.Product
SET ListPrice= ListPrice*1.10
WHERE ProductCategoryID=
	(SELECT ProductCategoryID	
	FROM SalesLT.ProductCategory
	WHERE Name= 'Bells and Horns')


-- Objetivo Consulta 2: Actualizar los productos con ProductCatgegoryID = 37 como productos 
-- que tienen DiscontinuedDate, es decir, como productos que se han dejado de vender. Todos
-- los de esa categoría menos uno en concreto que se sigue vendidendo.

UPDATE SalesLT.Product
SET DiscontinuedDate = GETDATE()
WHERE ProductCategoryID= 37 
AND ProductNumber <>'LT-L123'
