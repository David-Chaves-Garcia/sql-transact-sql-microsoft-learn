SELECT  c.CompanyName,
		c.FirstName,
		c.LastName,
		oh.PurchaseOrderNumber,
		oh.SubTotal + oh.TaxAmt + oh.Freight AS TotalDue

FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.SalesOrderHeader as oh
	ON c.CustomerID = oh.CustomerID
ORDER BY oh.PurchaseOrderNumber DESC
