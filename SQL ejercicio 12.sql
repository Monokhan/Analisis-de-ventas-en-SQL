--EJERCICIO 12
--Muestra los empleados con mas ventas
--Calcula un bono por sus ventas del 2%

USE Northwind
GO

SELECT TOP 3 e.firstName + ' ' + e.LastName AS [Full Name],
SUM(od.Quantity * od.UnitPrice) as [Total sale],
ROUND(SUM( od.Quantity * od.UnitPrice)*0.02 ,0) as Bonus

FROM [Employees] e
INNER JOIN [Orders] o ON e.EmployeeID = o.EmployeeID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
WHERE YEAR (o.OrderDate) = '2018'
AND MONTH (o.OrderDate) = '1'
GROUP BY e.FirstName + ' ' + e.LastName