(1)
Select *
	from [HumanResources].[Department]

Select distinct Name 
	from [HumanResources].[Department]

(2)
Select *
	from [Production].[Culture]

Select distinct Name 
	from [Production].[Culture]

(3)
Select *
	from [Person].[Person]

Select Distinct PersonType
	from [Person].[Person]

(4)
Select * 
	from [Sales].[SpecialOffer]

Select Distinct Category 
	from [Sales].[SpecialOffer]

(5)
Select *
	from [Purchasing].[Vendor]

Select Name 
	from [Purchasing].[Vendor]
		where AccountNumber like 'AUSTRALI0001'

Select Name 
	from [Purchasing].[Vendor]
		where AccountNumber = 'AUSTRALI0001'

(6)
Select *
	from [Sales].[SalesTerritory]

Select TerritoryID, Name
	from [Sales].[SalesTerritory]
		where CountryRegionCode = 'US' or CountryRegionCode = 'CA'

Select TerritoryID, Name
	from [Sales].[SalesTerritory]
		where CountryRegionCode like 'US' or  CountryRegionCode like 'CA'

Select TerritoryID, Name
	from [Sales].[SalesTerritory]
		where CountryRegionCode in('US','CA')

(7)
Select *
	from [Sales].[CurrencyRate]

Select ToCurrencyCode, AverageRate
	from [Sales].[CurrencyRate]
		where CurrencyRateDate Between '2011-05-31' and '2011-06-20'

Select ToCurrencyCode, AverageRate
	from [Sales].[CurrencyRate]
		where CurrencyRateDate >= '2011-05-31' and CurrencyRateDate <= '2011-06-20'

(8)
Select *
	from [Sales].[SalesTaxRate]

Select AVG(TaxRate) as tarifa_promedio
	from [Sales].[SalesTaxRate]

(9)
Select MIN(ReorderPoint) as minimo_punto, MAX(ReorderPoint) as maximo_punto
	from [Production].[Product]

(10)
Select *
	from [Production].[Product]

Select DISTINCT ProductModelID
	from [Production].[Product]

Select Count(Distinct ProductModelID) as cant_modelos
	from [Production].[Product]

(11)
Select *
	from [Production].[ProductReview]

Select ProductID, Count(Comments) as cantidad_com
	from [Production].[ProductReview]
		group by ProductID