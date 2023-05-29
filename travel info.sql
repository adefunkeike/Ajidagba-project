/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Trip ID]
      ,[Destination]
      ,[Start date]
      ,[End date]
      ,[Duration (days)]
      ,[Traveler name]
      ,[Traveler age]
      ,[Traveler gender]
      ,[Traveler nationality]
      ,[Accommodation type]
      ,[Accommodation cost]
      ,[Transportation type]
      ,[Transportation cost]
  FROM [Travel &info].[dbo].[TRAVEL]
  select *
  from [dbo].[hotel_info]


  delete  from [dbo].[TRAVEL] where [Traveler age] is null
  select * 
  from [dbo].[TRAVEL]
 
select cast(replace(Accommodation cost, '$','')as int)as Acomodation_cost
from [dbo].[TRAVEL]

update [dbo].[TRAVEL] set [Accommodation cost] = replace([Accommodation cost], '$','')

update [dbo].[TRAVEL] set  [Transportation cost] = replace([Transportation cost], '$','') 


begin transaction
update [dbo].[TRAVEL] set [Transportation cost] = replace( [Transportation cost], ' ',0)

