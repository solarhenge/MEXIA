USE [MexiaSource]
GO

--IF OBJECT_ID('dbo.StatCanadaArea', 'U') IS NOT NULL 
--	DROP TABLE [dbo].[StatCanadaArea]
--GO

/****** Object:  Table [dbo].[StatCanadaArea]    Script Date: 2018-01-31 5:51:05 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StatCanadaArea](
	[StatCanadaAreaID] [smallint] NOT NULL,
	[StatCanadaArea] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_StatCanadaArea_StatCanadaAreaID] PRIMARY KEY CLUSTERED 
(
	[StatCanadaAreaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

