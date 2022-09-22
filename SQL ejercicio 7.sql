--Ejercicio 7
--Clasifica a los clientes de acuerdo al total de ventas
-->= 30000 Nivel A
-->= 20000 y <30000 Nivel B
---< 20000 Nivel C

USE Northwind
GO

SELECT c.CompanyName,
SUM (od.Quantity * od.UnitPrice) AS Total,

CASE
	WHEN (SUM(od.Quantity * od.UnitPrice) >=30000 ) THEN 'A'
	WHEN (SUM(od.Quantity * od.UnitPrice) < 30000 AND SUM(od.Quantity * od.UnitPrice) >= 20000) THEN 'B'
	ELSE 'C'
	END AS LEVEL
fROM [Customers] c
INNER JOIN [Orders] o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
GROUP BY c.CompanyName

