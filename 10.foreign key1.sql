create database shoppingcart;
use shoppingcart;
create table product(pid int primary key,
pname varchar(30) not null, 
quantity int check (quantity>0),
price float check(price>500),
discriptions varchar(50) default "discription not available");
insert into product values(1,"pen",12,501,"writing"),
(2,"volleyball",20,1000,"sports"),
(3,"plants",50,561,"gardening");

select * from product;
create table customer(cid int primary key,
cname varchar(20),
email varchar(20),
address varchar(30),
pid int, 
foreign key(pid) references product(pid));     -- foreign key usage
insert into customer values(143,"namith","n.com","mysore",1),
(122,"kushal","k.com","bnglr",3),
(333,"prajwal","cpcom","hunsur",2);
select * from customer;


create table cart(cartid int primary key,
pquantity int,
price float,
pid int,
foreign key(pid) references product(pid));
insert into cart values(11,50,200,1),
(12,50,100,2),
(13,50,300,3);
select*from cart;


-- alter table customer 
-- add column cartid int,
-- add foreign key(cartid) references cart(cartid);  -- cart_fk-indicate name for foreign key for future references

desc customer;

update customer set cartid=176 where cid=111;
select * from customer;



