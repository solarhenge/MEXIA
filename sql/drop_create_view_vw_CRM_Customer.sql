use MexiaSource
go

IF OBJECT_ID('dbo.vw_CRM_Customer') IS NOT NULL 
	DROP VIEW [dbo].[vw_CRM_Customer]
GO

create view vw_CRM_Customer as
  select a.*
  from [MexiaCRM].[dbo].[customer] as a
  , [MexiaSource].[dbo].[etl] b
  where 1=1
  and a.updatedDate > b.ETL_DATE
  and b.object = 'Customer'
go
