create database you;
use you;
create table student(usn varchar(30) primary key,fname varchar(20) not null,lname varchar(20) not null,age int check (age>20));
insert into student values("20cs017","tejas","gowda",21);
select * from student;
select fname ,length(fname) as lenght from student;   -- lenght-use to find lenght of the strings
select substring("welcome sql",9,3);
select fname,substring(fname,3,3 ) as substring from student;
select concat(fname,lname) as fullname from student;
select concat(fname," ",lname) as fullname,age from student;
select upper(fname) as uppercase from student;
select lower(fname) as lowercase from student;
select upper(fname) as uppercase,upper(lname) as upper from student;
select replace(" bengaluru","bengaluru","mysore") as replacedresult;
select replace(fname,"tejas","Mr.tejas") as replacednamed from student;

select * from student;

select trim(fname) as firstname ,trim(lname) as lastname from student;  -- trim- removes the front and rear spaces of names

select rtrim(fname) as firstname ,rtrim(lname) as lastname from student; 
select ltrim(fname) as firstname ,ltrim(lname) as lastname from student; 
select ltrim(lname) as lname from student;
select rtrim(fname) as fname from student;
select ltrim(fname) as fname from student;
select rtrim(lname) as lname from student;

select left("tejas",2) as result;
select right("tejas",2) as result;

select reverse("tejas");

drop database you;


