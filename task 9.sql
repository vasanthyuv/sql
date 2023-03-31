create database task9

use task9

create table semester1(
studentid int primary key,
studentname varchar(20),
semester int,
securedmarks int,
totalmarks int );

insert into semester1 values(1,'VIKRAM',3,480,500),(2,'VIJAY',2,450,500),(3,'VASANTH',3,485,500),(4,'HARI',2,490,500),(5,'VIKRANTH',3,465,500),(6,'THILAK',3,483,500)

create procedure search(@name varchar(20))
as 
begin
select * from semester1 where studentname=@name
end

exec search 'VASANTH'


create procedure remark
as
begin 
select studentname,studentid,securedmarks,
case
when securedmarks>=580 and securedmarks<=500  then 'A+'
when securedmarks>=550 and securedmarks<=580 then 'A'
when securedmarks>=400 and securedmarks<=450 then 'A-'
else
'B'
end as 'remark'
from semester1
end 




exec remark




create table #local(
name varchar(20)
)

insert into #local values('vasanth')
select * from #local


create table ##global(
name varchar(20)
)

insert into ##global values('vasanth')
select * from ##global


declare @localvariable table(
name varchar(20)
)

insert into  @localvariable values('vasanth')

select * from  @localvariable




create procedure #local_procedure
as 
begin
print 'local procedure'
end 

exec #local_procedure


create procedure ##global_procedure 
as
begin 
print 'global procedure'
end

exec ##global_procedure