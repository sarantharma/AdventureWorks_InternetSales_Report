-- Cleansed DIM_DateTable 
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date,
  --,[DayNumberOfWeek] 
  [EnglishDayNameOfWeek] AS Day,
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear] , 
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month,
  LEFT([EnglishMonthName], 3) AS MonthShort,
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear IN (2021,2022,2023) -- Ensure we always bring two years of date from extraction
