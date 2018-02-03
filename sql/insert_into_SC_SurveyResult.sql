USE [MexiaSource]
GO

INSERT INTO [dbo].[SC_SurveyResult] ([SC_AreaID] ,[SurveyYear] ,[AvgHouseholdIncome] ,[AvgEducationLevel] ,[AvgHouseholdSize]) VALUES (100 ,2008 ,78500 ,'High School' ,3.2)
INSERT INTO [dbo].[SC_SurveyResult] ([SC_AreaID] ,[SurveyYear] ,[AvgHouseholdIncome] ,[AvgEducationLevel] ,[AvgHouseholdSize]) VALUES (100 ,2009 ,79000 ,'High School' ,3.1)
INSERT INTO [dbo].[SC_SurveyResult] ([SC_AreaID] ,[SurveyYear] ,[AvgHouseholdIncome] ,[AvgEducationLevel] ,[AvgHouseholdSize]) VALUES (100 ,2010 ,80000 ,'College' ,3.0)
GO

SELECT SR.*, A.*
FROM [dbo].[SC_SurveyResult] AS SR
LEFT OUTER JOIN [dbo].[SC_Area] AS A
ON SR.SC_AreaID = A.SC_AreaID
GO
