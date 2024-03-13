SELECT 
  [CustomerKey],
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title], 
  [FirstName] AS [First Name],
  --,[MiddleName], 
  [LastName] AS [Last Name], 
  FirstName + ' ' + LastName AS [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix],
  Case [Gender] when 'M' then 'Male' when 'F' then 'Female' End As Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase] AS [Date First Purchase], 
  --,[CommuteDistance]
  g.City AS [Customer City] -- Join in customer city from geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  Left join DimGeography g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey -- Order List by customer key
