create database company1;
use company1;

create table employee(EmpID int,EmName varchar(20),Salary int);

insert into employee values(1,'Saarim',500000),(2,'Shashank',10000),(3,'Sharanesh',50000);

select * from employee;

select EmpID,EmName,Salary,
if(salary>10000,'highest salary','Low salary') as Salary_Category
from employee;
-- Here if salary is greater than 10000 we get highest salary else low salary in the column Salary_category

insert into employee values(4,'Chandra',500),(5,'Namith',100000),(6,'Sandeep',1000000);
insert into employee values(7,'Chthan',2450);

select EmpID,EmName,Salary,
case
    when Salary<=10000 then 'Low Salary'
    when Salary between 10000 and 100000 then 'Average Salary'
    else 'Highest Salary'
end 
as Salary_Category
from Employee;
-- Here there are more than 1 if condition. If all statments are false then else will get executed

alter table employee
add column Department varchar(20);

set sql_safe_updates=0;

update employee set Department='CSE'  where EmpID in (1,2);

update employee set Department='CE'  where EmpID in (3,4,5,6);

update employee set Department='uy'  where EmpID in (7);

update employee set salary=
case
    when department='CSE' then Salary*5
    when department='CE' then salary*2
    else salary
end;
## This will update the salary in CSE and EC and for remaining nothing will be done	

select * from employee
where salary>(select salary from employee where EmName='Shashank');
-- Here paranthesis select statement will executes first because main select statement depends on the sub query
## This will give Salary which is greater than Shanshank salary...

show databases;

select * from employee;
drop database company1;
