-- we are importing(schemas-select database-rightclick-table data import wizard) the data from external source

create database mill_records;
use mill_records;
select * from sales;
select count(*) from sales;
desc sales;
alter table sales modify Country varchar(50);
select * from sales where country="canada";

-- we cant get total number of recordes using select so we create index
-- to view total number of records when thr is a more than 1000 of records before data is load 
create index test_index on sales(Country);

-- to create another user to access data from root
create user 'test_user' @'localhost' identified  by 'sede12345';

-- to grant the permission to other user from root to only view data
grant select on mill_records.sales to 'test_user' @'localhost';

-- to grant the permission to other user from root to only alter data
grant alter on mill_records.sales to 'test_user' @'localhost';

-- to grant the permission to other user from root to only delete data
grant delete on mill_records.sales to 'test_user' @'localhost';

-- to grant the permission to other user from root to only update data
grant update on mill_records.sales to 'test_user' @'localhost';

-- to view the permission which we are given to another user;	
show grants for 'test_user' @'localhost';

-- to remove access to the  another user
revoke select on  mill_records.sales from 'test_user' @'localhost';

-- to view indexes we createe 
show indexes from sales;

-- to drop indexes we created
drop index test_index on sales;

-- to drop another user we created
drop user 'test_user' @'localhost';