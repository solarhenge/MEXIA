USE [MexiaCRM]
GO

/****** Script for SelectTopNRows command from SSMS  ******/

insert into dbo.Customer
(CustomerNumber, FirstName, LastName, BirthDate, StreetAddress, City, Prov, PostalCode)
SELECT [EmployeeID] AS CustomerNumber
      ,[FirstName]
      ,[LastName]
--      ,[Title]
--      ,[TitleOfCourtesy]
      ,[BirthDate]
--      ,[HireDate]
      ,[Address] AS StreetAddress
      ,[City]
      ,[Region] AS Prov
      ,[PostalCode]
--      ,[Country]
--      ,[HomePhone]
--      ,[Extension]
--      ,[Photo]
--      ,[Notes]
--      ,[ReportsTo]
--      ,[PhotoPath]
  FROM [Northwind].[dbo].[Employees]