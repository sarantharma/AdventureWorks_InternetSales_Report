-- Cleansed DIM_Customer Table 

SELECT cus.CustomerKey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      cus.FirstName AS [First Name],
      --,[MiddleName]
      cus.LastName AS [Last Name],
	  cus.FirstName + ' ' + cus.LastName AS [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE cus.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
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
      cus.DateFirstPurchase AS DateFirstPurchase,
      --,[CommuteDistance]
	  geo.City AS [Customer City] --Joined in Customer city from Geography Table
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS cus
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS geo 
  ON geo.GeographyKey = cus.GeographyKey
  ORDER BY CustomerKey ASC -- Ordered the list by Custoer Key;
