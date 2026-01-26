SELECT SalesOrderID,
		ROUND(Freight,2)  AS FreightCost,
		LOWER(ShipMethod) AS ShippingMethod,
		YEAR(ShipDate) AS ShipYear,
		DATENAME(MM,ShipDate) AS ShipMonth,
		DAY(ShipDate) AS ShipDay		
FROM SalesLT.SalesOrderHeader