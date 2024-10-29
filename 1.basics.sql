create database bookstoredb;
use bookstoredb;
create table books(bid int,title varchar(25),author varchar(35),price decimal(10,2),publishedyear varchar(20));
insert into books values(1,"the great gatsby","f.scott fitzgerald",10.99,1925);
insert into books values(2,"1984","geoge orwell",8.99,1949);
insert into books values(3,"to kill a mockingbird","harper lee",7.99,1960);
insert into books values(4,"moby dick","herman melville",9.99,1851);
insert into books values(5,"war and peace","leo tolstoy",12.99,1869);
select * from books;
insert into books(bid,title,author,publishedyear) values(6,"pride and prejudice","jane austen",1813),
(7,"the hobbit","j.r.r tolkien",1937),
(8,"jane eyre","charlotte bronte",1847),
(9,"the catcher in the rye","j.d salinger",1851),
(10,"the odyssey","homer",-800);
select * from books;
set sql_safe_updates=0;
update books set price=15.99 where bid=1;
update books set price=5.99 where bid=3;
select * from books;
update books set author="herman melville" where bid=4;
update books set price="10.99", publishedyear=1950 where bid=2;
select * from books;
show databases;
drop database bookstoredb;










