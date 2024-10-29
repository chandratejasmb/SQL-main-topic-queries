create database 1management;
use 1management;

create table EventMang(EID int primary key,Ename varchar(20) not null,EventStartDate timestamp,EventEndDate timestamp,EventCreatedDate date);

insert into EventMang values(1,"Saarim",'2024-08-14 10:57:00','2024-08-27 10:58:00','2024-08-14');

insert into EventMang values(2,"Shashank",'2024-08-15 10:58:00','2024-08-28 10:59:00','2024-08-15'),(3,"Namith",'2024-08-16 10:59:00','2024-08-29 11:00:00','2024-08-16');

insert into EventMang values(4,"Saranesh",'2024-08-17 11:00:00','2024-08-30 11:01:00','2024-08-17');

select current_timeStamp();
#This will give the current date and time

select current_date();
#This will give the current date

select now();
#This is same as current_timestamp

select day('2024-08-14') as DayNo;
#This will give the day of the month..

select month('2024-08-14') as MonthNo;
#This will give the month of the year

select year('2024-08-14') as YearNo;
#This will extract the year from the date

select year(now()) as YearNo;
#we can use now in paranthesis

select hour(now()) as Hour;
#This will extract the hour quantity

select minute(now()) as minuteNow;
#This will extract the minute from now

select second(now()) as SecondsNow;
#This will give the second from now

select datediff('2024-010-08','2002-10-08') as Total_Days;
#This will show the difference between dates in days

select EventEndDate,EventStartDate,datediff(EventEndDate,EventStartDate) as DayDiff
from EventMang;
#This will show the day difference of two columns in days

select date_add('2024-08-14',interval 10 day) as AddedDays;
#This will show the date after the interval here(10)

select date_add(EventCreatedDate, interval 10 day) as DaysReq
from EventMang;
#This will show the date after the interval(add 10 days in the present date)

select date_sub('2024-03-27',interval 10 day) as Further_date;
#This will substract an interval from the date

select date_sub(EventCreatedDate,interval 10 day) as DaysRequired
from EventMang;

select last_day('2024-09-14') as Last_date_month;
#This will give the last date of the month

-- alter table EventMang
-- add column TodayDate date default current_date();

select * from EventMang;

alter table EventMang add column today timestamp  default current_timestamp;
 
 alter table EventMang drop column todaydate;
 drop database 1management;



 

