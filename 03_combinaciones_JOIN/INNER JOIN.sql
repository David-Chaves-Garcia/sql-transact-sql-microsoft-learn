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