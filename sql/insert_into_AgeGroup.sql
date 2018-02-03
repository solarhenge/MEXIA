USE [MexiaSource]
GO

DECLARE @AgeGroup int;

DECLARE @MaxAge int;
SELECT @MaxAge = 120;

DECLARE @x int;
SELECT @x = 0;

WHILE @x < @MaxAge
BEGIN
	SELECT @AgeGroup = (@x/10)+1;
	INSERT INTO [dbo].[AgeGroup] ([Age],[AgeGroupID]) VALUES (@x,@AgeGroup);
	SELECT @x = @x+1;
END;

GO
