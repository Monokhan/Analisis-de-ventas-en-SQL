--Ejercicio 2
--Encuentra el producto que tiene el segundo precio mas alto en la compañia

--buscar el product ID 29, que tiene un valor de 123,79 , que corresponde al segundo item de mayor valor

USE Northwind
GO
SELECT ProductName, UnitPrice
FROM [Products] p1
WHERE 1 = (SELECT  COUNT(DISTINCT UnitPrice)
FROM Products p2
WHERE p2.UnitPrice > p1.UnitPrice)


-- si se le cambia el numero a WHERE mostrara el valor que corresponde a la tabla de precios ascendente