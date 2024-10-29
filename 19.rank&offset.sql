create database bn;
use bn;

create table students(StdID int primary key,SName varchar(20), Age int, marks int);

insert into students values(111,'Jhon',22,86),(112,'Smith',30,92),(114,'Sam',31,95),(115,'Karan',28,88),
                            (117,'Janavi',29,92),(118,'Pavan',26,85);
               
select * from students;
select * from students order by marks desc;

## Rank is a function which ranks any column on the basis of its value 
Select StdID,SName,Age,marks, rank() over(order by marks desc )
as ranks
from students;
##here if marks are repeating it will give same rank for two records and will skip the next rank

##When we use dense_rank it will not skip the rank for the duplicate marks
Select StdID,SName,Age,marks, dense_rank() over(order by marks desc)
as ranks
from students;

##This will show only show 3 top records of the table
select StdID,SName,age,marks
from students
order by marks desc
limit 3;

##This will display the 4th highest record only on the basis of marks
select StdID,SName,age,marks
from students
order by marks desc
limit 2;
offset 3;

##Offset starts from 0th. First record is the 0th one
##offset tells us about the indexing
##And limit displays the amount of records that you want
select StdID,SName,age,marks
from students
order by marks desc
limit 1
offset 3;

select * from students;

##Creating table using select query
create table student_copy as select * from students;

##This will show display the new table we created using select
select * from student_copy;

##Here auto increment will not work 
create table student_data_only as select * from students;

select * from student_data_only;

select * from students;

desc student_data_only;

drop database bn;
