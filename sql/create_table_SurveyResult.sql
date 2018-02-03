USE [MexiaSource]
GO

--IF OBJECT_ID('dbo.SurveyResult', 'U') IS NOT NULL 
--	DROP TABLE [dbo].[SurveyResult]
--GO

/****** Object:  Table [dbo].[SurveyResult]    Script Date: 2018-01-31 6:01:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SurveyResult](
	[SurveyResultKey] [int] IDENTITY(1,1) NOT NULL,
	[AreaID] [smallint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[AvgHouseholdIncome] [float] NOT NULL,
	[AvgEducationLevel] [nvarchar](255) NOT NULL,
	[AvgHouseholdSize] [float] NOT NULL,
 CONSTRAINT [PK_SurveyResult_SurveyResultKey] PRIMARY KEY CLUSTERED 
(
	[SurveyResultKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SurveyResult]  WITH CHECK ADD  CONSTRAINT [FK_SurveyResult_Area] FOREIGN KEY([AreaID])
REFERENCES [dbo].[Area] ([AreaID])
GO

ALTER TABLE [dbo].[SurveyResult] ADD CONSTRAINT [UK_SurveyResult_AreaID_SurveyYear] UNIQUE NONCLUSTERED
    (
                [AreaID],[SurveyYear]
    )
GO