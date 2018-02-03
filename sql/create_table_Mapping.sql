USE [MexiaSource]
GO

--IF OBJECT_ID('dbo.Mapping', 'U') IS NOT NULL 
--	DROP TABLE [dbo].[Mapping]
--GO

/****** Object:  Table [dbo].[Mapping]    Script Date: 2018-01-31 6:14:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mapping](
	[MappingKey] [int] IDENTITY(1,1) NOT NULL,
	[AreaID] [smallint] NOT NULL,
	[FSA] [nvarchar](3) NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
 CONSTRAINT [PK_Mapping_MappingKey] PRIMARY KEY CLUSTERED 
(
	[MappingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mapping]  WITH CHECK ADD  CONSTRAINT [FK_Mapping_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([AreaID])
GO

ALTER TABLE [dbo].[Mapping] ADD CONSTRAINT [UK_Mapping_FSA_SurveyYear] UNIQUE NONCLUSTERED
    (
                [FSA],[SurveyYear]
    )
GO