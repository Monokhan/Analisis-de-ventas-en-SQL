--Ejercicio 6
--Muestra los productos que generan un monto total de venta mayor o igual $30.000 y muestra las unidades vendidas de cada producto en 2018

USE Northwind
GO

SELECT p.ProductName,sum(od.Quantity) AS [Number of unites], sum(od.Quantity * od.UnitPrice) AS [TOTAL SALE AMOUNT]
FROM [Orders] o
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN [Products] p ON od.ProductID = p.ProductID
WHERE YEAR (o.OrderDate) = '2018'
GROUP BY p.ProductName
HAVING SUM (od.Quantity * od.UnitPrice) >= 30000
