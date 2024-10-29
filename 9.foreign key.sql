create database school;
use school;
create table department(did int auto_increment primary key,dname varchar(30),email varchar(20));

-- create table department(did int auto_increment primary key,dname varchar(30),email varchar(20)) auto_increment=500; -- assigning autoincrement value while creating table


insert into department(dname,email) values("CSE","cse.com"),("EC","ec.com"),("IS","is.com"),("MECH","mech.com");
select * from department;
set sql_safe_updates=0;
delete from department where dname="MECH";
insert into department(dname,email) values("CIVIL","civil.com");
alter table department auto_increment=500;   -- assigning the auto increment value if we need
insert into department(dname,email) values("AIML","aiml.com");

create table employee(eid int auto_increment primary key,
ename varchar(30),
esalary decimal(10,2) check(esalary>5000),
did int,
foreign key(did) references department(did) on delete cascade);
-- on delete cascade-delets the particulr recrd directly from parent and child table when we use foregin key

insert into employee(ename,esalary,did) values ("sharth",6000,1),("shashank",7000,2),("sameer",5500,3),("shobith",7500,5),("samahith",6000,1);
select * from employee;

delete from department where did=500;
alter table employee drop foreign key fk_did;
