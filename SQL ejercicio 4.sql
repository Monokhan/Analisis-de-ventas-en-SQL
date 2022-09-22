--Ejercicio 4
--Encontrar las ordenes que tardaron mas de 2 dias en entregarse despues de ser realizadas por el usuario, donde el valor sea mayor de 10.000
--Mostrar número de dias, fecha de la orden, customer ID y pais de envio

USE Northwind
GO

SELECT	o.OrderID, o.CustomerID, o.OrderDate, o.ShippedDate, o.ShipCountry,
DATEDIFF(DAY, OrderDate, ShippedDate) AS Duration_of_ship,
SUM(od.Quantity * od.UnitPrice) as [Total Sale Amount]
FROM [Orders] o
INNER JOIN [Order Details] od on o.OrderID = od.OrderID
WHERE DATEDIFF(DAY, OrderDate,ShippedDate) >2
GROUP BY o.OrderID, o.CustomerID, o.OrderDate, o.ShippedDate, o.ShipCountry
HAVING SUM(od.Quantity * od.UnitPrice)>10000
