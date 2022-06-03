SELECT * 
  FROM Person.Person;

SELECT UPPER(FirstName) as nombre,  UPPER(LastName) as apellido
  FROM Person.Person;

SELECT CONCAT(UPPER(LastName), ', ', UPPER(FirstName)) AS Persona
  FROM Person.Person;

SELECT * 
  FROM Person.EmailAddress;

SELECT CHARINDEX('@', EmailAddress, 1) 
  FROM Person.EmailAddress;

SELECT distinct LEFT(EmailAddress,CHARINDEX('@', EmailAddress, 1)-1) as usr
  FROM Person.EmailAddress;

SELECT LEN(EmailAddress)
  FROM Person.EmailAddress;

SELECT distinct RIGHT(EmailAddress,LEN(EmailAddress) -CHARINDEX('@', EmailAddress, 1)) as usr
  FROM Person.EmailAddress;

SELECT REPLACE (EmailAddress, 'adventure-works.com', 'coderhouse.com') as mail
  FROM Person.EmailAddress;

SELECT * 
  FROM Sales.SalesOrderHeader;

SELECT OrderDate, ShipDate, DATEDIFF(day,ShipDate, OrderDate) as LeadTime, DATEPART(month, OrderDate) as MesPedido, 
       DATENAME(month, OrderDate) as MesPedido
  FROM Sales.SalesOrderHeader;


SELECT * 
  FROM sales.SalesOrderHeader 
  WHERE ShipToAddressID in (
          SELECT AddressID
            FROM Person.Address
            WHERE AddressLine1 like '%avenue%' and City='Paris');

SELECT * 
  FROM Sales.SalesOrderDetail
  WHERE SalesOrderID IN (
        SELECT * 
  FROM sales.SalesOrderHeader 
  WHERE ShipToAddressID in (
          SELECT AddressID
            FROM Person.Address
            WHERE AddressLine1 like '%avenue%' and City='Paris'))

SELECT Ord.SalesOrderID, Ord.OrderDate,
    (SELECT MAX(OrdDet.UnitPrice)
     FROM Sales.SalesOrderDetail AS OrdDet
     WHERE Ord.SalesOrderID = OrdDet.SalesOrderID) AS MaxUnitPrice
FROM Sales.SalesOrderHeader AS Ord;

SELECT LastName, FirstName
FROM Person.Person
WHERE BusinessEntityID IN
    (SELECT BusinessEntityID
     FROM HumanResources.Employee
     WHERE BusinessEntityID IN
        (SELECT BusinessEntityID
         FROM Sales.SalesPerson)
    );