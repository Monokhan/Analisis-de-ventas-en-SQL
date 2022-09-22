--Ejercicio 5
--Encuentra el TOP 10 de clientes mas valiosos 

USE Northwind
GO

SELECT TOP 10 c.CompanyName, c.Country, c.City,
SUM(od.Quantity * od.UnitPrice) AS [Total Sale]
FROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE  YEAR(o.OrderDate) = '2017'
GROUP BY c.CompanyName, c.Country, c.City
ORDER BY [Total Sale] DESC