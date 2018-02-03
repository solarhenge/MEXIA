USE [MexiaCRM]
GO

IF OBJECT_ID('dbo.Customer', 'U') IS NOT NULL 
	DROP TABLE [dbo].[Customer]
GO


CREATE TABLE [dbo].[Customer](
	[CustomerNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[StreetAddress] [nvarchar](240) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Prov] [nvarchar](3) NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[CreatedDate] [datetime] DEFAULT(getdate()),
	[UpdatedDate] [datetime] DEFAULT(getdate())
)	
GO	

USE [MexiaSource]
GO

IF OBJECT_ID('dbo.Customer_Stage', 'U') IS NOT NULL 
	DROP TABLE [dbo].[Customer_Stage]
GO


CREATE TABLE [dbo].[Customer_Stage](
	[CustomerNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[StreetAddress] [nvarchar](240) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Prov] [nvarchar](3) NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[Age] [int] NULL,
	[AgeGroupID] [int] NULL,
	[FSA] [nvarchar](3) NULL,
	[SC_AreaID] [smallint] NULL,
	[SurveyYear] [smallint] NULL,
	[AvgHouseholdIncome] [money] NULL,
	[AvgEducationLevel] [nvarchar](255) NULL,
	[AvgHouseholdSize] [money] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
)	
GO	

IF OBJECT_ID('dbo.Customer', 'U') IS NOT NULL 
	DROP TABLE [dbo].[Customer]
GO


CREATE TABLE [dbo].[Customer](
	[CustomerNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[StreetAddress] [nvarchar](240) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Prov] [nvarchar](3) NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[Age] [int] NULL,
	[AgeGroupID] [int] NULL,
	[FSA] [nvarchar](3) NULL,
	[SC_AreaID] [smallint] NULL,
	[SurveyYear] [smallint] NULL,
	[AvgHouseholdIncome] [money] NULL,
	[AvgEducationLevel] [nvarchar](255) NULL,
	[AvgHouseholdSize] [money] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL
)	
GO	

USE [MexiaTarget]
GO

IF OBJECT_ID('dbo.DimCustomer', 'U') IS NOT NULL 
	DROP TABLE [dbo].[DimCustomer]
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerSurrogateKey] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[StreetAddress] [nvarchar](240) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Prov] [nvarchar](3) NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[Age] [int] NULL,
	[AgeGroupID] [int] NULL,
	[FSA] [nvarchar](3) NULL,
	[SC_AreaID] [smallint] NULL,
	[SurveyYear] [smallint] NULL,
	[AvgHouseholdIncome] [money] NULL,
	[AvgEducationLevel] [nvarchar](255) NULL,
	[AvgHouseholdSize] [money] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsInferred] [bit] DEFAULT(0)
)	
GO

