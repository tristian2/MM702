/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT [Column 5] as original
	, '' martialStatus
FROM [MM702].[dbo].[rawAdult]
where [Column 5] != ''