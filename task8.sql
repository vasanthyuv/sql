use vasanth1


create table semester1(
studentid int primary key,
studentname varchar(20),
semester int,
securedmarks int,
totalmarks int );
alter tab
alter table semester
alter column securedmarks decimal
alter table semester
alter column semester rename 

create view sem as
select * from semester

insert into semester1 values(1,'VIKRAM',3,480,500),(2,'VIJAY',2,450,500),(3,'VASANTH',3,485,500),(4,'HARI',2,490,500),(5,'VIKRANTH',3,465,500),(6,'THILAK',3,483,500)

alter function m_total(@t decimal(5,2),@to decimal(5,2) )
returns decimal(5,2)
as
begin 

declare @final decimal(5,2)

set @final=(@t/@to)*100
return @final
end
select *, dbo.m_total(securedmarks,totalmarks)as result from semester

drop function dbo.m_total


create function sem(@semes int)
returns table 
as
 return select * from semester1 where semester=@semes

select * from dbo.sem(3)as result

select * from semester1




create procedure sp_display
as
 begin 
 select * from semester1
 end

 exec sp_display


 create procedure sp_seme1(@semes int)
 as
 begin
 select * from semester1 where semester=@semes
 end

 exec sp_seme1 @semes=2 



 create procedure sp_output(@student int output)
 as 
 begin 
 select @student= count(studentid)from semester1
 end

 declare @out int 
 exec sp_output @out output 
 print @out


 create table student(
 studentid int ,
studentname varchar(20),
semester int,
securedmarks int,
totalmarks int
 
 
 )
 select * from student

 update semester1 set studentid=1 where studentname='VIKRAM'
 MERGE student s
 using semester1 r
 on(r.studentid=s.studentid)
 when matched 
 then update set
 s.studentname=r.studentname,
 s.semester=r.semester
 when not matched by target
 then insert(studentid,studentname,semester,securedmarks,totalmarks)
 values(r.studentid,r.studentname,r.semester,r.securedmarks,r.totalmarks)
 when not matched by source
 then delete;

 select * from student
 
 select * from semester1


update semester1 set  semester=5 where studentid=2
