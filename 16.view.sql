create database class;
use class;

create table empInfo(EID int,EName varchar(20),Age int,Gender varchar(20),Phone varchar(20),Email varchar(20),UserName varchar(20),Pass varchar(20),Dojoin varchar(20)); 

insert into empInfo value(1,'Shashank',22,'M',9199555666,'shashank.com','Shas','Shash12','Jan'),(2,'Saranesh',24,'M',9199555777,'shar.com','shara','shara123','feb');

insert into empInfo value(1,'Shashank',22,'M',9199555666,'shashank.com','Shas','Shash12','Jan',10000);
select * from empInfo;

select EID,EName,Email,DoJoin
from empInfo;

## We can create a kind of sub query in which creates a virtual table of our choice we can store the columns that we want to store in it...

create view view_emp as
select EID,EName,Email,DoJoin
from empInfo;

update empInfo set email='shara.com' where EID=2;
##After updating the records in the main table the view table records is also updated

set sql_safe_updates=0;

update view_emp set Dojoin='
Dec' where EID=2;
##This wil also update the record in the main table...
##We can only updates the column which are present in the view table...

##update view_emp set phone='9876543210' where EID=2;
##We can't update this because phone number column is not present in view table...

##There are two types of views
##1.Simple view->Can modify records in main table
##2.Complex view->We cannot modify the records in main table here we can use join also
##3.Materialized view->it will create new physical table in the DB

create or replace view view_emp as
select EID,EName,Email,DoJoin,Phone
from empInfo;
##This is the quesry we can use to add column in the view table;

##This will only showcase the columns that we have saved in view table whose name is empInfo
select * from view_emp;

drop view view_emp;
##This will drop the view table

select * from empinfo;
