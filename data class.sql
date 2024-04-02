create table Data_analysis(
class_id  int primary key not null,
name nvarchar(200), age int, 
review int )

insert into Data_analysis(class_id,name, age,review)
values(1, 'Bolu', 20,5)