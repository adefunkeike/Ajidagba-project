/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [date]
      ,[calorie]
      ,[time]
      ,[work_type]
      ,[weight]
      ,[lifted_weight_leg_day_squat_leg_press]
      ,[protein]
      ,[carb]
      ,[fat]
      ,[sex]
      ,[shoulder_length]
      ,[waist_length]
      ,[leg_length]
      ,[arm_length]
      ,[neck_length]
      ,[chest_length]
      ,[sleep_time]
      ,[age]
      ,[water]
      ,[steps]
      ,[diet_type]
  FROM [FITNESS].[dbo].[fitntess for men]

--- firstly, filling up the empty space with'not given
  update [dbo].[fitntess for men]
  set time= 'not given'
  where time is null
  -- but that didnt work out dont know why

  select *
  from[dbo].[fitntess for men]

  --then found out varchar cant sum so  remove it 
  update[dbo].[fitntess for men]
  set calorie = REPLACE( [lifted_weight_leg_day_squat_leg_press], 'kcal ', ' ')
 
 -- ading the calories sign at the end 
update [dbo].[fitntess for men] 
set calorie = calorie + ' ' + 'kcal'.
select sum(calorie)calorie
  from [dbo].[fitntess for men]
  -- this couldnt work because of the data type, i would have to cast
  select sum(CAST(calorie as int)) as calorie 
   from[dbo].[fitntess for men]
  -- average of lifted weight
  select avg(cast(lifted_weight_leg_day_squat_leg_press as int)) as lifted_weight_leg_day_squat_leg_press
  from [dbo].[fitntess for men]


  select count(diet_type)no_of_males_doing_reverse_dieting
  from[dbo].[fitntess for men]
  where diet_type ='Reverse Dieting'

  
  select cast(count (calorie)as int)  non
  from[dbo].[fitness for me]
   where calorie is null


   
  select *  from[dbo].[fitness for me]
   select *
from [dbo].[fitntess for men]

select 'calorie', count(*)
from[dbo].[fitness for me]

update [dbo].[fitness for me]
set calorie = cast(calorie as int)

update[dbo].[fitness for me]
set calorie= 0
where lifted_weight_leg_day_squat_leg_press is null


update[dbo].[fitness for me]
set time= 'not given'
where lifted_weight_leg_day_squat_leg_press is null

update[dbo].[fitness for me]
set calorie= replace([calorie], ' ','.00000' )

update [dbo].[fitness for me]
set lifted_weight_leg_day_squat_leg_press =0
where lifted_weight_leg_day_squat_leg_press is null

--- let see if we still have null vales in the dataset 
select protein as columnname, count(*) null_no 
from [dbo].[fitness for me]
where protein is null
group by protein
union
select carb as columnname, count(*)null_no
from [dbo].[fitness for me]
where carb is null
group by carb
union
select fat as columnname, count(*) null_no 
from [dbo].[fitness for me]
where fat is null
group by fat
union
select shoulder_length as columnname, count(*)null_no
from [dbo].[fitness for me]
where shoulder_length is null
group by shoulder_length
union
select waist_length as columnname, count(*) null_no 
from [dbo].[fitness for me]
where waist_length is null
group by waist_length
union
select leg_length as columnname, count(*)null_no
from [dbo].[fitness for me]
where leg_length is null
group by leg_length
union
select arm_length as columnname, count(*) null_no 
from [dbo].[fitness for me]
where arm_length is null
group by arm_length
union
select neck_length as columnname, count(*)null_no
from [dbo].[fitness for me]
where neck_length is null
group by neck_length
union
select chest_length as columnname, count(*) null_no 
from [dbo].[fitness for me]
where chest_length is null
group by chest_length
union
select water as columnname, count(*)null_no
from [dbo].[fitness for me]
where water is null
group by water

---- there are no null values 
--- i want add am to time and litre to  water


update [dbo].[fitness for me]
set sleep_time=cast( sleep_time  as int)

select cast(sleep_time as int)+'pm' 
from  [dbo].[fitness for me]





select * from  [dbo].[fitness for me]
