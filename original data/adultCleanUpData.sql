USE [MM702]
GO

SELECT [Column 0] age
      ,trim(replace([Column 1], '?', '')) workclass
	  ,[Column 1]
      ,[Column 2] fnlwgt
      ,[Column 3] education
      ,[Column 4] educationNum
      ,[Column 5] martialStatus
      ,trim(replace([Column 6], '?', '')) occupation
      ,[Column 7] relationship
      ,[Column 8] race
      ,[Column 9] sex
      ,[Column 10] capitalGain
      ,[Column 11] capitalLoss
      ,[Column 12] hoursPerWeek
      ,trim(replace([Column 13], '?', '')) nativeCountry
      ,[Column 14] income
  FROM [dbo].[rawAdult]
  --where [Column 1] like ' ?'
GO

