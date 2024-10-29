create database store;
use store;
create table book(bid int primary key,bname varchar(30) not null,bauthor varchar(30)not null,bquantity int,ISBN int unique);
insert into book values
(1,"the hobbit","j.r.r tolkien",10,12345),
(2,"jane eyre","charlotte bronte",11,184997),
(3,"the catcher in the rye","j.d salinger",12,198851);
select * from book;
alter table book add column bprice decimal(5,2) check (bprice>100);
select * from book;
alter table book add column bstore varchar(30) default "banglore";
update book set bprice=120 where bid=2;
insert into book values(4,"qwerty","namith",10,123456,155,"mandya");
insert into book(bid,bname,bauthor,bquantity,ISBN,bprice) values(5,"qwerty","namith",20,1983456,165);
alter table book modify bquantity int default 20;
insert into book(bid,bname,bauthor,ISBN,bprice) values(6,"qwerty","namith",5983456,165);
drop database store;
