USE [MexiaSource]
GO

/****** Object:  Table [dbo].[SC_SurveyResult]    Script Date: 2018-01-31 6:01:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SC_SurveyResult](
	[SC_SurveyResultKey] [int] IDENTITY(1,1) NOT NULL,
	[SC_AreaID] [smallint] NOT NULL,
	[SurveyYear] [smallint] NOT NULL,
	[AvgHouseholdIncome] [money] NOT NULL,
	[AvgEducationLevel] [nvarchar](255) NOT NULL,
	[AvgHouseholdSize] [money] NOT NULL,
 CONSTRAINT [PK_SC_SurveyResult_SC_SurveyResultKey] PRIMARY KEY CLUSTERED 
(
	[SC_SurveyResultKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SC_SurveyResult]  WITH CHECK ADD  CONSTRAINT [FK_SC_SurveyResult_SC_Area] FOREIGN KEY([SC_AreaID])
REFERENCES [dbo].[SC_Area] ([SC_AreaID])
GO

ALTER TABLE [dbo].[SC_SurveyResult] ADD CONSTRAINT [UK_SC_SurveyResult_SC_AreaID_SurveyYear] UNIQUE NONCLUSTERED
    (
                [SC_AreaID],[SurveyYear]
    )
GO