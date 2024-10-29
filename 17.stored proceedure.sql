use class;
select * from empInfo;

-- syntax to write stored procedure
 delimiter //  
 create procedure empdetails()
 begin
 
select * from empInfo;

End ;
delimiter //

call empdetails();

 delimiter //  
 create procedure empdetailsbyname1(in name varchar(20))         -- to get a particular person record
 begin
 
select * from empInfo where Ename=name;

End //
delimiter ;

 
 call empdetailsbyname1("namith");
 
 
 delimiter //  
 create procedure empdetailsbyname5(in id int,in name varchar(20),in age int)         
 begin
 
insert into empInfo (Eid,Ename,age) values(id,name,age);
select * from empInfo;

End //
delimiter ;

call empdetailsbyname5(10,"samith",23);

drop procedure empdetailsbyname5;

 delimiter //  
 create procedure addnumb(in num1 int,in num2 int, out res int)         
 begin
 
set res=num1+num2;

End //
delimiter ;
drop procedure addnumberss;
set @result=0;
call addnumb(10,20,@result);
select @result as result;


select * from empInfo;
alter table empInfo add column salary int;
insert into empInfo(salary) values(10000);

set sql_safe_updates=0;
update empInfo set salary=15000 where eid=9;



 delimiter //  
 create procedure gettotalsalaary( out totalsal int)
 begin
 
select sum(salary) into totalsal from empInfo;

End //
delimiter ;

set @totalsal=0;
call gettotalsalaary(@totalsal);
select @totalsal as totalsalary;

drop procedure gettotalsalary;

select * from empinfo;

select * from empInfo;


alter table empInfo add column dept varchar(20);
update  empInfo set dept="CSE" where EID=9;
 


delimiter //  
 create procedure gettotalsalary1( out totalsal int,in dept1 varchar(20))
 begin
 
select sum(salary) into totalsal from empInfo where dept=dept1;

End //
delimiter ;

set @totalsal=0;
call gettotalsalary1(@totalsal,"CSE");
select @totalsal as result;