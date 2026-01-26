SELECT p.Name, SUM(od.OrderQty) AS TotalSales
FROM SalesLT.Product AS p
JOIN SalesLT.SalesOrderDetail AS od
	ON p.ProductID= od.ProductID
WHERE p.ListPrice>1000
GROUP BY p.Name
HAVING SUM(od.OrderQty)>20
ORDER BY TotalSales DESC