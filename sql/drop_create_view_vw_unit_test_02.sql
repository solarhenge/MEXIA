USE [MexiaSource]
GO

IF OBJECT_ID('dbo.vw_unit_test_02') IS NOT NULL 
	DROP VIEW [dbo].[vw_unit_test_02]
GO

create view vw_unit_test_02 as
SELECT [CustomerSurrogateKey]
      ,[CustomerNumber]
--      ,[FirstName]
      ,[LastName]
      ,[BirthDate]
--      ,[StreetAddress]
--      ,[City]
--      ,[Prov]
--      ,[PostalCode]
      ,[Age]
      ,[AgeGroupID]
--      ,[FSA]
--      ,[SC_AreaID]
--      ,[SurveyYear]
--      ,[AvgHouseholdIncome]
--      ,[AvgEducationLevel]
--      ,[AvgHouseholdSize]
      ,[StartDate]
      ,[EndDate]
--      ,[IsInferred]
  FROM [MexiaTarget].[dbo].[DimCustomer]
  WHERE 1=1
  AND CustomerNumber = 3
GO

SELECT * FROM vw_unit_test_02;
GO
