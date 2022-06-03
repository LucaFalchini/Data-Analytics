(1)

Select *
	from [HumanResources].[EmployeePayHistory]

Select *
	from [HumanResources].[Employee]
		where HireDate >= '2009-01-01'

Select a.NationalIDNumber as 'N° ID Nacional', b.Rate as 'Tarifa'
	from [HumanResources].[Employee] as a
		Left Join [HumanResources].[EmployeePayHistory] as b
			ON a.BusinessEntityID=b.BusinessEntityID
				Where a.Gender='F' and a.HireDate >= '2009-01-01'

//Solución
select
a.nationalidnumber,
b.rate
from
HumanResources.Employee a
left join HumanResources.EmployeePayHistory b
ON A.BusinessEntityID = B.businessentityid
where a.Gender = 'F'
AND DATEPART(YEAR, A.HIREDATE) >= 2009

(2)

Select *
	from [Person].[BusinessEntityAddress]

Select *
	from [Person].[BusinessEntityContact]


Select 
	a.AddressID as 'ID Dirección', 
	a.BusinessEntityID as 'ID Entidad Negocio',
	a.AddressTypeID as 'ID Tipo Dirección',
	b.PersonID as 'ID Persona', 
	b.ContactTypeID as 'Id Tipo Contacto'
		from [Person].[BusinessEntityAddress] as a
			Inner Join [Person].[BusinessEntityContact] as b
				ON a.BusinessEntityID=b.BusinessEntityID
					where a.AddressID>1000

//Solución
select
a.BusinessEntityID,
a.PersonID,
a.ContactTypeID,
b.AddressTypeID
from Person.BusinessEntityContact a
inner join
Person.BusinessEntityAddress b
on a.BusinessEntityID = b.BusinessEntityID
where b.AddressID >= 1000


(3)

Select *
	from [Production].[ProductPhoto]

Select *
	from [Production].[ProductProductPhoto]


Select 
	a.ProductPhotoID as 'ID Foto Producto',
	a.LargePhotoFileName as 'Nombre Archivo Foto',
	b.ProductID,
	LEFT(a.LargePhoto,5) as largo
		from [Production].[ProductPhoto] as a
			Inner Join [Production].[ProductProductPhoto] as b
				ON a.ProductPhotoID=b.ProductPhotoID
					where b.ProductID between 920 and 931 and a.LargePhotoFileName NOT LIKE 'no_image%'

//Solución
select
a.productphotoid,
a.thumbnailphotofilename,
left(a.largephoto, 5) as largo,
b.productid
from Production.ProductPhoto a
left join Production.ProductProductPhoto b
on a.ProductPhotoID = b.ProductPhotoID
where ProductID >= 920 and ProductID <= 931
and a.ThumbnailPhotoFileName not like 'no_image%'

(4)

Select *
	from [Production].[WorkOrder]

Select *
	from 