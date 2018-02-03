USE [MexiaCRM]
GO

update Customer set PostalCode = 'R3C 1X7' 
,updateddate = getdate()
where CustomerNumber = 1;
go

--run MexiaAge.dtsx
--run MexiaFSA.dtsx
--run MexiaSCD2.dtsx
--run select * from vw_unit_test_01