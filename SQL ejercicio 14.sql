--EJERCICIO 14
--¿ CUANTO TIEMPO LLEVAN TRABAJANDO TUS EMPLEADOS?

USE Northwind
GO

SELECT LastName, FirstName, Title,
DATEDIFF(YEAR, Hiredate, GETDATE()) AS [Work years in the company]
FROM [Employees]