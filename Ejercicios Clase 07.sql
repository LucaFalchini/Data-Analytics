Select * from [HumanResources].[Employee]

Select BusinessEntityID, NationalIDNumber, LEFT(NationalIDNumber, 3) as ID_3 
Ejercicio 4 - Tabla: [Production].[ProductPhoto]

SELECT ProductPhotoID, LargePhotoFileName, REPLACE(LargePhotoFileName, 'gif', 'jpeg') as foto
	FROM [Production].[ProductPhoto]





SELECT BusinessEntityID, NationalIDNumber, LEFT(NationalIDNumber, 3) AS ID_tres 