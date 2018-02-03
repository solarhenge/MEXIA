use MexiaSource
go

IF OBJECT_ID('dbo.vw_SC_Mapping') IS NOT NULL 
	DROP VIEW [dbo].[vw_SC_Mapping]
GO

create view vw_SC_Mapping as
select t.FSA, t.SC_AreaID, t.SurveyYear, t.AvgHouseholdIncome, t.AvgEducationLevel, t.AvgHouseholdSize
from (select m.*,sr.avghouseholdincome, sr.avgeducationlevel, sr.avghouseholdsize,
row_number() over(partition by m.fsa order by m.surveyyear desc) as rn
from sc_mapping m
left outer join sc_surveyresult as sr
on m.sc_areaid = sr.sc_areaid
and m.surveyyear = sr.surveyyear
) as t
where rn = 1;
go