-- Curso: Microsoft Learn - Transact-SQL
-- Tema: Funciones Integradas
-- Descripción: Comprender uso de Funciones Integradas (escalares)
-- Objetivo : Obtener para cada pedido de venta: Order ID, Freight Cost redondeado a 2 decimales,
-- ShipMethod denominado como ShippingMethod y en minúsculas, año de ShipDate denominado como ShipYear,
-- mes de ShipDate denominado como ShipMonth y en formato nombre del mes, día de ShipDate denominado como ShipDay

SELECT SalesOrderID,
		ROUND(Freight,2)  AS FreightCost,
		LOWER(ShipMethod) AS ShippingMethod,
		YEAR(ShipDate) AS ShipYear,
		DATENAME(MM,ShipDate) AS ShipMonth,
		DAY(ShipDate) AS ShipDay		

FROM SalesLT.SalesOrderHeader

