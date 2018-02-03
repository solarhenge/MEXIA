USE [MexiaCRM]
GO

update Customer set BirthDate = CONVERT(VARCHAR, '1958-08-30', 121)
,updateddate = getdate()
where CustomerNumber = 3;
go

--run MexiaAge.dtsx
--run MexiaFSA.dtsx
--run MexiaSCD2.dtsx
--run select * from vw_unit_test_02