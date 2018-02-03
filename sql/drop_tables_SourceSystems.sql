USE [SourceSystems]
GO

IF OBJECT_ID('dbo.Mapping', 'U') IS NOT NULL 
	DROP TABLE [dbo].[Mapping]
GO

IF OBJECT_ID('dbo.StatCanadaArea', 'U') IS NOT NULL 
	DROP TABLE [dbo].[StatCanadaArea]
GO

IF OBJECT_ID('dbo.SurveyResult', 'U') IS NOT NULL 
	DROP TABLE [dbo].[SurveyResult]
GO

