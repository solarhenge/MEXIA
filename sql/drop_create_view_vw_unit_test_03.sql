USE [MexiaSource]
GO

IF OBJECT_ID('dbo.vw_unit_test_03') IS NOT NULL 
	DROP VIEW [dbo].[vw_unit_test_03]
GO

create view vw_unit_test_03 as
SELECT [CustomerSurrogateKey]
      ,[CustomerNumber]
--      ,[FirstName]
      ,[LastName]
--      ,[StreetAddress]
      ,[City]
      ,[Prov]
      ,[PostalCode]
      ,[BirthDate]
      ,[Age]
      ,[AgeGroupID]
      ,[FSA]
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
  AND CustomerNumber = 2
GO

SELECT * FROM vw_unit_test_03;
GO
