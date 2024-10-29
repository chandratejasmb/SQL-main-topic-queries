-- JOINT  -can be retrive from 2 or more to join and thr shld be same column in both table
-- INNER  -should have common record in both table
-- LEFT   -all  records from left table and comman record from right table
-- RIGHTT -all  records from right table and comman record from left table
-- FULL OUTER JOIN
-- NATURAL join(similar to inner join) -- column name should be same
-- CROSS join(cartisian join)- it takes first record from A table and multiplies with  all rcords from B table

create database joints;
use joints;
create table customer(cid int primary key,
cname varchar(20),
caddress varchar(20),
cemail varchar(30));

create table orders(oid int primary key,
orderdate date,
cid int);

insert into orders values(01,"2024-05-16",01),
(02,"2024-05-05",2),
(03,"2023-04-12",3),
(04,"2022-05-17",4),
(05,"2021-07-19",5);

insert into customer values(098761,"gowda","banglore","g.com"),
(0276,"tejas","banglore","t.com"),
(08763,"namith","mysore","n.com"),
(07654,"raj","mandya","m.com"),
(00935,"sharath","madikeri","ma.com");

select * from customer;
select * from orders;

-- inner join
select customer.cid,customer.cname,customer.cemail,
orders.oid,orders.orderdate
from customer inner join orders
on customer.cid=orders.cid;

-- inner join using alias
select c.cid,c.cname,c.cemail,            -- alias is used in this as c(customer) and o(orders)
o.oid,o.orderdate
from customer as c inner join orders as o
on c.cid=o.cid;

-- left join
select c.cid,c.cname,c.cemail,            -- alias is used in this as c(customer) and o(orders)
o.oid,o.orderdate
from customer as c left join orders as o
on c.cid=o.cid;

-- right join
select c.cid,c.cname,c.cemail,            -- alias is used in this as c(customer) and o(orders)
o.oid,o.orderdate
from customer as c right join orders as o
on c.cid=o.cid;

-- full outer join doesnot support in sql so we use union

select c.cid,c.cname,c.cemail,            -- alias is used in this as c(customer) and o(orders)
o.oid,o.orderdate
from customer as c left join orders as o
on c.cid=o.cid union 
select c.cid,c.cname,c.cemail,            
o.oid,o.orderdate
from customer as c right join orders as o
on c.cid=o.cid;

-- natural join(similar to inner join) -- column name should be same

select * from customer
as c natural join orders as o;

select c.cid,c.cname from customer
as c natural join orders as o;

-- cross join(cartisian join)- it takes first record from A table and multiplies with  all rcords from B table
select * from customer
as c cross join  orders as o;

create table emp(eid int primary key,ename varchar(20),managerid int);

insert into emp values(111,"sam",113);
select * from emp;

-- to create instances using single table
select e.ename,e1.ename from emp as e inner join emp as e1 on e.eid=e1.managerid;  