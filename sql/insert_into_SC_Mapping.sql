USE [MexiaSource]
GO

INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (100,'R2N',2009)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (100,'R2J',2009)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (100,'R2K',2009)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (101,'R2M',2009)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (101,'R3C',2009)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (100,'R2N',2010)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (100,'R2J',2010)
INSERT INTO [dbo].[SC_Mapping] ([SC_AreaID],[FSA],[SurveyYear]) VALUES (133,'R2K',2010)
GO

SELECT * FROM [dbo].[SC_Mapping]
GO

SELECT M.*, SCA.* FROM [dbo].[SC_Mapping] AS M
LEFT OUTER JOIN [dbo].[SC_Area] AS SCA
ON M.SC_AreaID = SCA.SC_AreaID
GO
