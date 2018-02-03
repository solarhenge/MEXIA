UPDATE A
   SET A.[FirstName] 	      = B.[FirstName] 	
      ,A.[LastName] 	      = B.[LastName] 	
      ,A.[BirthDate] 	      = B.[BirthDate] 	
      ,A.[StreetAddress]      = B.[StreetAddress]
      ,A.[City] 	      = B.[City] 
      ,A.[Prov] 	      = B.[Prov] 
--      ,A.[Age] 		 = B.[Age] 		
--      ,A.[AgeGroupID] 	 = B.[AgeGroupID]
      ,A.[FSA]                = B.[FSA] 		
      ,A.[SC_AreaID]          = B.[SC_AreaID] 
      ,A.[SurveyYear]         = B.[SurveyYear] 
      ,A.[AvgHouseholdIncome] = B.[AvgHouseholdIncome] 
      ,A.[AvgEducationLevel]  = B.[AvgEducationLevel] 
      ,A.[AvgHouseholdSize]   = B.[AvgHouseholdSize] 
      ,A.[CreatedDate]        = B.[CreatedDate] 	
      ,A.[UpdatedDate]        = B.[UpdatedDate] 	
FROM Customer AS A JOIN Customer_Stage AS B
ON A.CustomerNumber = B.CustomerNumber
GO

TRUNCATE TABLE Customer_Stage
GO