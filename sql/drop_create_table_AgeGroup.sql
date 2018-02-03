USE [MexiaSource]
GO

IF OBJECT_ID('dbo.AgeGroup', 'U') IS NOT NULL 
	DROP TABLE [dbo].[AgeGroup]
GO

/****** Object:  Table [dbo].[AgeGroup]    Script Date: 2018-01-31 7:19:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AgeGroup](
	[Age] [int] NOT NULL,
	[AgeGroupID] [int] NOT NULL
 CONSTRAINT [PK_AgeGroup_Age] PRIMARY KEY CLUSTERED 
(
	[Age] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
