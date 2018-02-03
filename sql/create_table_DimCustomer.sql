USE [DW]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 2018-01-31 4:52:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerSurrogateKey] [int] IDENTITY(1,1) NOT NULL,
	[CustomerNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[StreetAddress] [nvarchar](240) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Prov] [nvarchar](3) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
	[Age] [smallint] NOT NULL,
	[CurrentAgeGroupKey] [int] NOT NULL,
	[FSA] [nvarchar](3) NOT NULL,
	[StatCanadaAreaID] [smallint] NOT NULL,
	[MostRecentSurveyYear] [smallint] NOT NULL,
	[AvgHouseholdIncome] [float] NOT NULL,
	[AvgEducationLevel] [nvarchar](255) NOT NULL,
	[AvgHouseholdSize] [float] NOT NULL,
	[StartDate] [smallint] NOT NULL,
	[EndDate] [smallint] NULL,
	[CurrentRecordFlag] 





	[MaritalStatus] [nchar](1) NULL,
	[Suffix] [nvarchar](10) NULL,
	[Gender] [nvarchar](1) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[YearlyIncome] [money] NULL,
	[TotalChildren] [tinyint] NULL,
	[NumberChildrenAtHome] [tinyint] NULL,
	[EnglishEducation] [nvarchar](40) NULL,
	[SpanishEducation] [nvarchar](40) NULL,
	[FrenchEducation] [nvarchar](40) NULL,
	[EnglishOccupation] [nvarchar](100) NULL,
	[SpanishOccupation] [nvarchar](100) NULL,
	[FrenchOccupation] [nvarchar](100) NULL,
	[HouseOwnerFlag] [nchar](1) NULL,
	[NumberCarsOwned] [tinyint] NULL,
	[AddressLine1] [nvarchar](120) NULL,
	[AddressLine2] [nvarchar](120) NULL,
	[Phone] [nvarchar](20) NULL,
	[DateFirstPurchase] [date] NULL,
	[CommuteDistance] [nvarchar](15) NULL,
 CONSTRAINT [PK_DimCustomer_CustomerKey] PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_DimCustomer_CustomerAlternateKey] UNIQUE NONCLUSTERED 
(
	[CustomerAlternateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY([GeographyKey])
REFERENCES [dbo].[DimGeography] ([GeographyKey])
GO

ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimGeography]
GO


