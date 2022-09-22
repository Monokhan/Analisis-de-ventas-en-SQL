--Ejercicio 16
--exportar datos de SQL a EXCEL  para usar en tableau

USE Northwind
GO

--CREATE VIEW TableauData1 AS
SELECT c.CompanyName, c.City ,c.Country, CONVERT(DATE,o.OrderDate) AS
OrderDate, od.Quantity, od.UnitPrice, p.ProductName,ct.CategoryName
FROM
Customers c
INNER JOIN
Orders o
ON c.CustomerID = o.CustomerID
INNER JOIN
[Order Details] od
ON
o.OrderID=od.OrderID
INNER JOIN
Products p
ON
od.ProductID = p.ProductID
INNER JOIN
Categories ct
ON p.CategoryID= ct.CategoryID

