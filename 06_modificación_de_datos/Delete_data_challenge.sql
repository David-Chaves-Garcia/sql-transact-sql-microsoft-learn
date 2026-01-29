-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos
-- Objetivo Borrar los datos de productos cuya categoría sea 'Bells and Horns'

DELETE FROM SalesLT.Product
WHERE ProductCategoryID=
	(SELECT ProductCategoryID
	FROM SalesLT.ProductCategory
	WHERE Name= 'Bells and Horns');

DELETE FROM SalesLT.ProductCategory
WHERE ProductCategoryID=
	(SELECT ProductCategoryID
	FROM Saleslt.ProductCategory
	WHERE Name= 'Bells and Horns');

-- Si queremos eliminar los datos de una tabla padre (con claves foráneas) primero debemos
-- eliminar los datos de la tabla hija, sino dejaríamos a la tabla hija apuntando a algo que 
-- ya no existe, y por lo tanto se rompería la integridad de los datos
