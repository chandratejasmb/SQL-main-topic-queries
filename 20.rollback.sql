create database sqll;
use sqll;
create table account_table (acid int primary key,acname varchar(20),balance decimal(10,2));
create table transaction_table (transid int auto_increment primary key,
acid int,account decimal(10,2),transdate date,foreign key (acid) references account_table(acid));
insert into account_table values(11,"namith",2000.00),(12,"darshan",1000.00),(13,"mp",3000.00);
insert into transaction_table values(1,11,2000.00,"2022-10-08"),(2,12,4000.00,"2023-09-08"),(3,13,5000.00,"2022-08-08");
select * from account_table ;
select * from transaction_table;

-- start transaction;  -- is used to ensure that a group of operations behaves as a single,
-- reliable unit, providing control over the sequence and execution of those operations.
start transaction;

 -- ROLLBACK is used to undo changes made during a transaction before they are committed. It essentially reverts the database
 -- to the state it was in before the transaction began
rollback;

 -- COMMIT is used to permanently save all changes made during the current transaction to the database. Once a transaction is committed,
 -- its changes are final and cannot be undone.
commit;

-- SAVEPOINT is used to set a point within a transaction to which you can later roll back without affecting the entire transaction. 
 -- It allows finer control over the transaction by letting you undo a part of it, while keeping the rest intact.
savepoint  updatestu1; 
update account_table set balance=44000.00 where acid=11;

savepoint  updatestu2;
update account_table set balance=5000.00 where acid=2;

savepoint  updatestu3;
update account_table set balance=55000.00 where acid=3;

savepoint  updatestu4;
update account_table set balance=5400.00 where acid=1;

savepoint  updatestu5;
update account_table set balance=5800.00 where acid=1;

rollback to updatestu1;

commit;

savepoint  updatestu6;
update account_table set balance=56600.00 where acid=1;

drop database sqll;








