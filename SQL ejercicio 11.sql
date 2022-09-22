--EJERCICIO 11
--Encontrar la duracion de dias entre ordenes de cada cliente 

USE Northwind
GO

SELECT a.CustomerID, a.OrderDate, b.OrderDate,
DATEDIFF(DAY, a.OrderDate, b.OrderDate) AS [Days between two orders]
FROM [Orders] a
INNER JOIN [Orders] b ON a.OrderID = b.OrderID -1