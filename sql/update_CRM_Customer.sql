USE [MexiaCRM]
GO

/****** Script for SelectTopNRows command from SSMS  ******/

update dbo.Customer set prov = 'MB', postalcode = 'R2N 1M6' where customernumber = 1;
update dbo.Customer set prov = 'MB', postalcode = 'R2J 1M6' where customernumber = 2;
update dbo.Customer set prov = 'MB', postalcode = 'R2K 1M6' where customernumber = 3;
update dbo.Customer set prov = 'MB', postalcode = 'R2M 1M6' where customernumber = 4;
update dbo.Customer set prov = 'MB', postalcode = 'R3C 1M6' where customernumber = 5;
go
