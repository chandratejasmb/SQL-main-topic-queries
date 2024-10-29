create database qwerty;
use qwerty;
create table faculty(fid int, fname varchar(25), dept varchar(20));
insert into faculty(fid,fname,dept) values 
(1,"tejas","cse"),
(2,"nithya","ece"),
(3,"kushal","cse"),
(4,"pavan","mech"),
(5,"ravi","mech");
select * from faculty;
set sql_safe_updates=0;
delete from faculty where fid=3;
truncate table faculty;
select * from faculty;
drop table faculty;
select * from faculty;
drop database qwerty;