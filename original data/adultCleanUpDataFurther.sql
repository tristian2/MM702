USE [MM702]
GO

SELECT [Column 0] age
	,trim(replace([Column 1], '?', '')) workclass
	--,[Column 2] fnlwgt
	--,adult.[Column 3] education
	--,adult.[Column 4] educationNum
	,level.educationLevel	
	,[maritalStatus].[maritalStatus]
	,trim(replace([Column 6], '?', '')) occupation
	,trim([Column 7]) relationship
	,trim([Column 8]) race
	,trim([Column 9]) sex
	,trim([Column 10]) capitalGain
	,trim([Column 11]) capitalLoss
	,trim([Column 12]) hoursPerWeek
	--,trim(replace([Column 13], '?', '')) nativeCountry
	,regions.region
	,trim([Column 14]) income
FROM [dbo].[rawAdult] adult
	join [dbo].[countriesToRegions] regions
		on regions.country = trim(replace([Column 13], '?', ''))
	join [dbo].[educationLevel] level
		on trim([level].edu) = trim(replace(adult.[Column 3], '?', ''))
	join [dbo].[maritalStatus] 
		on trim(adult.[Column 5]) = [maritalStatus].original
