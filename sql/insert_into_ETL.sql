USE [MexiaSource]
GO

INSERT INTO [dbo].[ETL]
           ([Schema]
           ,[Object]
           ,[ETL_DATE])
     VALUES
           ('dbo'
           ,'Customer'
           ,CONVERT(VARCHAR,'1900-01-01', 121))

GO


