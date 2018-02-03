USE [MexiaSource]
GO

IF OBJECT_ID('dbo.vw_unit_test_04') IS NOT NULL 
	DROP VIEW [dbo].[vw_unit_test_04]
GO

create view vw_unit_test_04 as
SELECT [CustomerSurrogateKey]
      ,[CustomerNumber]
--      ,[FirstName]
      ,[LastName]
      ,[StreetAddress]
--      ,[City]
--      ,[Prov]
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
  AND CustomerNumber = 4
GO

SELECT * FROM vw_unit_test_04;
GO
