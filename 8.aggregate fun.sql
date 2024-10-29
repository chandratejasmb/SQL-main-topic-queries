create database inbuiltfunctions;
use inbuiltfunctions;

create table employee(eid int primary key,
ename varchar(30) not null,
salary decimal(10,2) default 10000,
bonus decimal(10,2) default 1000);
insert into employee values(1,"kushal",12000,2000),(2,"karthi",11000,2500),(5,"suriya",12500,3000);
insert into employee (eid,ename) values (3,"prajju"),(4,"prathik");
select * from employee;
select count(*) from employee;  -- count * will give numbr of records from table
 
select count(*) as total_count from employee;   -- gives to create own column name

select sum(salary) as total_salary,sum(bonus) as total_bonus from employee;  -- gives total salry and bonus from table

select avg(salary) as avg_salary,avg(bonus) as avg_bonus from employee;   -- gives avg salary and bonus of table

select min(salary) as min_salary,min(bonus) as min_bonus from employee;  -- gives min salary and bonus of table

select max(salary) from employee;

select max(salary) as max_salary,max(bonus) as max_bonus from employee;    -- gives max salary and bonus of table

select distinct salary,bonus from employee;   -- distinct -use to delete duplicate record form table

select * from employee order by bonus; -- sorting in ascending

select * from employee order by bonus desc; -- sorting in decsending

select * from employee order by ename;

---------------------------------------------

use inbuiltfunctions;

select * from employee;

alter table employee add column department varchar(30);

update employee set department="cse" where eid=1;

select sum(salary) as total_salary from employee;

select department, sum(salary) as total_salary from employee group by department; -- group by -gives total salary of department by grouping

select department, avg(salary) as avg_salary from employee group by department;

select department, min(salary) as min_salary from employee group by department;

select department, max(salary) as max_salary from employee group by department;

select department, max(salary) as max_salary from employee group by department having max_salary>12000;
 -- having-used to get single value which greater or lesser from result table
 
 select department, max(salary) as max_salary from employee where salary>10000  group by department ;-- where - use to get values from main table

select department, max(salary) as max_salary from employee where salary>10000  group by department having max_salary>12000;-- having -used to get valuesform result table








