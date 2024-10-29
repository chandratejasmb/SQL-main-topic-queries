create database DDL_ex;
use DDL_ex;
create table employee(eid int,ename varchar(25),emailid varchar(25));
insert into employee(eid,ename,emailid) values (1,"ku","ku.com"),
(2,"kp","kp.com"),
(3,"kv","kv.com"),
(4,"mm","mm.com"),
(5,"mb","mb.com");
select * from employee;

alter table employee add column age int;
select * from employee;
update employee set age=34 where eid=1;
update employee set age=28 where eid=2;
update employee set age=36 where eid=3;
select * from employee;
alter table employee modify age float;      #to modify existing datatype
desc employee;
alter table employee change emailid Eemail varchar(30);   #to change columnanme
desc employee;
alter table employee drop column ename;   #to drops column from table
select * from employee;
drop database DDL_ex;




