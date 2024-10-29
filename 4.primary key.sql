create database chandra;
use chandra;
create table student(sid int primary key,sname varchar(30),email varchar(30)); # while creation of query
insert into student values (1,'Alice Johnson', "c.com"),
(2,'Bob Smith', "a.com"),
(3,'Charlie Brown', "`b.com"),
(4,'Diana Prince', "d.com"),
(5,'Eve Davis', "y.com"),(12,'Eve', "m.com");
-- insert into student(sname,email) values ("qwert","j.com");
insert into student(sid,email) values (7,"j.com");
select * from student;
alter table student modify email varchar(30) not null; #adding not null constraint for existing column
-- create table student(sid int primary key,sname varchar(30),email varchar(30) not null); # while creation of query
select * from student;
desc student;
alter table student add constraint sname unique(sname); -- modify email varchar(30) not null to unique;
alter table student drop primary key ;
alter table student add constraint sid primary key(sid);
desc student;
select * from student;
drop database chandra;