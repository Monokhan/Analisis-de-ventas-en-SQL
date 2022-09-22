--EJERCICIO  10
--Número de ordenes por clientes

USE Northwind
GO

SELECT c.CompanyName,
(SELECT COUNT (OrderID) FROM [Orders] o
WHERE c.CustomerID = o.CustomerID) AS [Number of orders]
FROM [Customers] c
ORDER BY [Number of orders] DESC