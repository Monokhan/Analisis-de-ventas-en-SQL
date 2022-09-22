--Ejercicio 1
--El top 10 de productos comprados por nombre, orden descendente por unidades vendidas
USE Northwind
GO
SELECT TOP 10 p.ProductName, sum(od.Quantity) AS [Units Sold]
FROM[Order Details] od
INNER JOIN [Products] p ON od.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY [Units Sold] DESC