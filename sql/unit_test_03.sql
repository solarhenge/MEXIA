USE [MexiaCRM]
GO

update Customer set BirthDate = CONVERT(VARCHAR, '1948-02-19', 121)
,city = 'Brandon'
,postalcode = 'R7A 7R2'
,updateddate = getdate()
where CustomerNumber = 2;
go

--run MexiaAge.dtsx
--run MexiaFSA.dtsx
--run MexiaSCD2.dtsx
--run select * from vw_unit_test_03