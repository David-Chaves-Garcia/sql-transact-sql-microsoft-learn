-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Modificación de datos

-- Objetivo Consulta 1 :Insertar un nuevo producto en la tabla de producto.
-- Elegimos en qué columnas de la tabla vamos a insertar los valores
INSERT INTO SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
VALUES ('LED Lights', 'LT-L123', 2.56, 12.99, 37, GETDATE());

SELECT SCOPE_IDENTITY(); -- Devuelve el último valor IDENTITY insertado

SELECT * FROM SalesLT.Product
WHERE ProductID= SCOPE_IDENTITY(); -- Devuelve toda la fila del último valor IDENTITY insertado


-- Objetivo Consulta 2: Insertar 2 nuevos productos en una nueva categoría de producto
INSERT INTO SalesLT.ProductCategory (Name, ParentProductCategoryID) -- Insertamos la nueva categoría en la tabla de categorías
VALUES ('Bells and Horns', 4)

INSERT INTO SalesLT.Product ( -- Insertamos los nuevos productos en la tabla de productos 
	Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
VALUES 
('Bicycle Bell', 'BB-RING', 2.47, 4.99, IDENT_CURRENT('SalesLT.ProductCategory'), GETDATE()),
('Bicycle Horn', 'BB-PARP', 1.29, 3.75, IDENT_CURRENT('SalesLT.ProductCategory'), GETDATE())
-- El ProductCategoryID será el IDENTITY de la última fila insertada en SalesLT.ProductCategory
