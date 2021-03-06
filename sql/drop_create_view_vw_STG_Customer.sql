use MexiaSource
go

IF OBJECT_ID('dbo.vw_STG_Customer') IS NOT NULL 
	DROP VIEW [dbo].[vw_STG_Customer]
GO

create view vw_STG_Customer as
  select a.*
  from [MexiaSource].[dbo].[customer] as a
  , [MexiaSource].[dbo].[etl] b
  where 1=1
  and a.updatedDate > b.ETL_DATE
  and b.object = 'Customer'
go
