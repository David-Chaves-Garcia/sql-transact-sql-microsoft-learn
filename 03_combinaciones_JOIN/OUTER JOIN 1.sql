-- Curso: Microsoft Learn - Transact-SQL
-- Tema: LEFT JOIN
-- Descripción: Comprender uso de LEFT JOIN
-- Objetivo: Entregar una lista de todas las compañias clientes y de sus contactos (Nombre y Apellido),
-- mostrando el número de pedido de compra y el total del pedido para cada pedido. Clientes sin pedidos
-- deberán figurar al final de la tabla con los campos número de pedido de compra y total del pedido como NULL.

SELECT  c.CompanyName,
		c.FirstName,
		c.LastName,
		oh.PurchaseOrderNumber,
		oh.SubTotal + oh.TaxAmt + oh.Freight AS TotalDue

FROM SalesLT.Customer AS c
LEFT JOIN SalesLT.SalesOrderHeader as oh
	ON c.CustomerID = oh.CustomerID
ORDER BY oh.PurchaseOrderNumber DESC

