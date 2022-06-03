Select * from [HumanResources].[Employee]

Select BusinessEntityID, NationalIDNumber, LEFT(NationalIDNumber, 3) as ID_3 
	from [HumanResources].[Employee]


Select addressid, AddressLine1, TRIM(right(postalcode, 4)) 
	From [Person].[Address]



Ejercicio 1: Tabla: [HumanResources].[Employee]
Ejercicio 2: Tabla: [Person].[Address]
Ejercicio 3: Tabla: [Person].[StateProvince]
Ejercicio 4 - Tabla: [Production].[ProductPhoto]
Ejercicio 5 - Tabla: [Production].[UnitMeasure]
Ejercicio 6 - Tabla: [Sales].[CreditCard]
Ejercicio 7 - Tabla: [Production].[TransactionHistoryArchive]

SELECT ProductPhotoID, LargePhotoFileName, REPLACE(LargePhotoFileName, 'gif', 'jpeg') as foto
	FROM [Production].[ProductPhoto]





SELECT BusinessEntityID, NationalIDNumber, LEFT(NationalIDNumber, 3) AS ID_tres 
FROM HumanResources.Employee


SELECT StateProvinceID, UPPER(CONCAT(CONCAT(CountryRegionCode,'/'), CONCAT(Name, '-'), StateProvinceCode)) AS Region
FROM Person.StateProvince;

select StateProvinceID, UPPER(CONCAT(CountryRegionCode, '/', Name, '-' , StateProvinceCode)) from [Person].[StateProvince]



select addressid,AddressLine1, TRIM(right(postalcode, 4))  from [Person].[Address] 

select ProductPhotoID, replace(ThumbnailPhotoFileName, 'gif', 'jpeg') AS NUEVO from [Production].[ProductPhoto]

SELECT UnitMeasureCode, name, year(modifieddate) as anio_modification FROM [Production].[UnitMeasure]

select CreditCardID, CardType, DATENAME(MONTH, ModifiedDate) from [Sales].[CreditCard]

select TransactionID, ReferenceOrderID, DATEPART(DAY, TransactionDate) from [Production].[TransactionHistoryArchive]

select WorkOrderID, StartDate, DATEADD(DAY, 30, StartDate) from [Production].[WorkOrder]

select WorkOrderID, DATEDIFF(DAY, ScheduledS)
