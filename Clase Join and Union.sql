(1)
select a.nationalidnumber, b.rate
	from HumanResources.Employee a
		left join HumanResources.EmployeePayHistory b
		ON A.BusinessEntityID = B.businessentityid
			where a.Gender = 'F'
			AND DATEPART(YEAR, A.HIREDATE) >= 2009

(2)
select 
a.BusinessEntityID,
a.PersonID,
a.ContactTypeID,
b.AddressTypeID
from Person.BusinessEntityContact a
inner join 
Person.BusinessEntityAddress  b 
on a.BusinessEntityID = b.BusinessEntityID
where b.AddressID >= 1000

(3)
select 
a.productphotoid, 
a.thumbnailphotofilename,
left(a.largephoto, 5) as largo,
b.productid
from Production.ProductPhoto  a 
left join Production.ProductProductPhoto b 
on a.ProductPhotoID = b.ProductPhotoID
where ProductID >= 920 and ProductID <= 931
and a.ThumbnailPhotoFileName not like 'no_image%'

(4)
select a.WorkOrderID, sum(orderqty) as cantidad 
from Production.WorkOrder a  
inner join Production.WorkOrderRouting b  
on a.WorkOrderID = b.WorkOrderID
where b.operationsequence  in (1,2)
and LocationID = 10 
and a.WorkOrderID < 100
group by a.WorkOrderID

(5)
select 
a.PersonID, 
a.StoreID, 
a.TerritoryID, 
a.AccountNumber, 
b.Title, 
b.FirstName, 
b.LastName 
from 
Sales.Customer a 
left join [Person].[Person] b 
on a.PersonID = b.BusinessEntityID 
where PersonID <= 300

(6)
select 
transactionid,
productid,
ReferenceOrderID,
ReferenceOrderLineID,
ModifiedDate
from 
Production.TransactionHistory
where ModifiedDate = '2013-07-31'
and productid = 784
and ReferenceOrderID >=53455 and ReferenceOrderID <= 53480

union 

select 
transactionid,
productid,
ReferenceOrderID,
ReferenceOrderLineID,
ModifiedDate
from 
Production.TransactionHistoryArchive
--Archive
where  productid = 784
and ModifiedDate = '2013-07-30'



