SELECT c.CustomerID, c.CompanyName, c.FirstName+' '+c.LastName AS ContactName
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.CustomerAddress AS ca
	ON c.CustomerID = ca.CustomerID
WHERE ca.AddressID IS NULL