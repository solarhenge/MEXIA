USE [MexiaCRM]
GO

update Customer set LastName = 'Smith'
,StreetAddress = '678 Waverley'
,updateddate = getdate()
where CustomerNumber = 4;
go

--run MexiaAge.dtsx
--run MexiaFSA.dtsx
--run MexiaSCD2.dtsx
--run select * from vw_unit_test_04