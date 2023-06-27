--Cleaned DIM_Product Table--
SELECT 
  [ProductKey], 
  [ProductAlternateKey] AS Product_Item_Code, 
  --[ProductSubcategoryKey], 
  --[WeightUnitMeasureCode], 
  --[SizeUnitMeasureCode], 
  [EnglishProductName] AS Product_Name, 
  [EnglishProductSubcategoryName] AS Sub_Category, -- Joined from Sub Category Table
  [EnglishProductCategoryName] AS Category,  -- Joined from Category Table
  --[SpanishProductName], 
  --[FrenchProductName], 
  --[StandardCost], 
  --[FinishedGoodsFlag], 
  [Color] AS Product_Color, 
  --[SafetyStockLevel], 
  --[ReorderPoint], 
  --[ListPrice], 
  [Size] AS Product_Size, 
  --[SizeRange], 
  --[Weight], 
  --[DaysToManufacture], 
  [ProductLine] AS Product_Line, 
  --[DealerPrice], 
  --[Class], 
  --[Style], 
  [ModelName] AS Product_Model_Name, 
  --[LargePhoto], 
  [EnglishDescription] AS Product_Description, 
  --[FrenchDescription], 
  --[ChineseDescription], 
  --[ArabicDescription], 
  --[HebrewDescription], 
  --[ThaiDescription], 
  --[GermanDescription], 
  --[JapaneseDescription], 
  --[TurkishDescription], 
  --[StartDate], 
  --[EndDate], 
  --[Status] 
  ISNULL (Status, 'Outdated') AS Product_Status
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY ProductKey ASC
