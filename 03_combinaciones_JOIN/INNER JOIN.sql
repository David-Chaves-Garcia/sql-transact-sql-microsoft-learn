-- Curso: Microsoft Learn - Transact-SQL
-- Tema: LEFT JOIN
-- Descripción: comparación LEFT JOIN vs INNER JOIN
-- Objetivo: Conseguir generar un reporte de Factura en el que conste:
-- · Company name de la tabla SalesLT.Customer
-- · Purchase order number y total due (sub-total + tax + freight) de la tabla SalesLT.SalesOrderHeader
-- · Full street address, city, state or province, postal code, y country or region de la tabla SalesLT.CustomerAddress 
-- usando también la tabla SalesLT.Address y filtrando únicamente donde AddressType sea Main Office


SELECT c.CompanyName,
		ad.AddressLine1,
		ISNULL(ad.AddressLine2,'') AS AddressLine2,
		ad.City,
		ad.StateProvince,
		ad.PostalCode,
		ad.CountryRegion,
		oh.PurchaseOrderNumber AS OrderNumber,
		oh.SubTotal + oh.TaxAmt + oh.Freight AS TotalDue
FROM SalesLT.Customer AS c
INNER JOIN SalesLT.SalesOrderHeader AS oh
	ON c.CustomerID = oh.CustomerID
INNER JOIN SalesLT.CustomerAddress AS cad
	ON c.CustomerID= cad.CustomerID
INNER JOIN SalesLT.Address AS ad
	ON cad.AddressID= ad.AddressID
WHERE cad.AddressType= 'Main Office'

ORDER BY CompanyName
