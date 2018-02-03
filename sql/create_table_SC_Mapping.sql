USE [MexiaSource]
GO

/****** Object:  Table [dbo].[SC_Mapping]    Script Date: 2018-01-31 6:14:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SC_Mapping](
	[SC_MappingKey] [int] IDENTITY(1,1) NOT NULL,
	[SC_AreaID] [smallint] NOT NULL,
	[FSA] [nvarchar](3) NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
 CONSTRAINT [PK_SC_Mapping_SC_MappingKey] PRIMARY KEY CLUSTERED 
(
	[SC_MappingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SC_Mapping]  WITH CHECK ADD  CONSTRAINT [FK_SC_Mapping_SC_Area] FOREIGN KEY([SC_AreaID])
REFERENCES [dbo].[SC_Area] ([SC_AreaID])
GO

ALTER TABLE [dbo].[SC_Mapping] ADD CONSTRAINT [UK_SC_Mapping_FSA_SurveyYear] UNIQUE NONCLUSTERED
    (
                [FSA],[SurveyYear]
    )
GO