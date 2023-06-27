--Cleaned DIM_Customers Table--
SELECT 
  [CustomerKey] AS Customer_Key, 
  --[GeographyKey], 
  --[CustomerAlternateKey], 
  --[Title], 
  [FirstName] AS First_Name, 
  --[MiddleName], 
  [LastName] AS Last_Name, 
  [FirstName] + ' ' + [LastName] AS Full_Name, 
  --[NameStyle], 
  --[BirthDate], 
  --[MaritalStatus], 
  --[Suffix], 
  CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --[EmailAddress], 
  --[YearlyIncome], 
  --[TotalChildren], 
  --[NumberChildrenAtHome], 
  --[EnglishEducation], 
  --[SpanishEducation], 
  --[FrenchEducation], 
  --[EnglishOccupation], 
  --[SpanishOccupation], 
  --[FrenchOccupation], 
  --[HouseOwnerFlag], 
  --[NumberCarsOwned], 
  --[AddressLine1], 
  --[AddressLine2], 
  --[Phone], 
  [DateFirstPurchase] AS Date_First_Purchase, 
  --[CommuteDistance]
  [City] AS Customer_City -- Joined from Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] 
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimGeography] ON [DimCustomer].GeographyKey = [DimGeography].GeographyKey 
ORDER BY 
  Customer_Key ASC
