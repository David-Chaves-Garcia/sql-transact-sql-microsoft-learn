-- Curso: Microsoft Learn - Transact-SQL
-- Tema: LEFT JOIN
-- Descripción: Comprender uso de LEFT JOIN
-- Objetivo : Entregar una lista de los clientes sin dirección donde figure ID del cliente, 
-- nombre de la compañía, contacto (nombre y apellidos) y número de teléfono.

SELECT c.CustomerID, c.CompanyName, c.FirstName+' '+c.LastName AS ContactName
FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.CustomerAddress AS ca
	ON c.CustomerID = ca.CustomerID
WHERE ca.AddressID IS NULL
