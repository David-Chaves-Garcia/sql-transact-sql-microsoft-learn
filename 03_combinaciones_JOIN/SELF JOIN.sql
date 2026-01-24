SELECT ppc.Name AS CategoryName, pc.Name AS SubcategoryName, p.Name AS ProductName
FROM SalesLT.ProductCategory AS pc
INNER JOIN SalesLT.ProductCategory AS ppc
	ON ppc.ProductCategoryID= pc.ParentProductCategoryID
INNER JOIN SalesLT.Product AS p
	ON pc.ProductCategoryID= p.ProductCategoryID
ORDER BY CategoryName, SubcategoryName, ProductName
