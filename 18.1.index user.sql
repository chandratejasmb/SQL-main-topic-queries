use mill_records;
select * from sales;
delete from sales where region="australia and oceania";
alter table sales modify region varchar(50);
set sql_safe_updates=0;
update sales set country="australlia" where region="australia and oceania";
