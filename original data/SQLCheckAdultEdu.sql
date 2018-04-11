/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT
     [Column 3] as edu
      ,[Column 4] as edunum
	  , '' educationLevel
	  
  FROM [MM702].[dbo].[rawAdult]
  INTO educationLevel
  where [Column 4] !=''
  order by edunum