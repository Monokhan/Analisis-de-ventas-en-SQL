--EJERCICIO 13
--¿Cuantos empleados tienes por posicion y por ciudad ?

USE Northwind
GO

SELECT  title, city, COUNT(EmployeeID)
FROM [Employees]
GROUP BY title, City, Region