UPDATE SalesLT.Product
SET ListPrice= ListPrice*1.10
WHERE ProductCategoryID=
	(SELECT ProductCategoryID
	FROM SalesLT.ProductCategory
	WHERE Name= 'Bells and Horns')