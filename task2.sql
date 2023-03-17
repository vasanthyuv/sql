use vasanth


 create schema student1
 create table student1.trainees(
 tid int primary key,
 tname varchar(20) unique not null,
 tsalary money check(tsalary>20000),
 tdesignation varchar(20) default 'developer'

 )

 select * from  student1.trainees
 select * from vasanth.trainees

 insert into  student1.trainees(tid,tname,tsalary) values(1,'vasanth',30000)
  insert into  student1.trainees values(2,'vikram',35000,'python developer'
   create schema vasanth
 alter schema vasanth transfer  student1.trainees

 EXEC sp_rename 'vasanth.trainees', 'developer';
 select * from vasanth.developer
alter DATABASE vasanth MODIFY NAME= vasanth1
use vasanth1



---third question---
create table office(
id int identity(1,1),
pname varchar(20),
salary money,
increment money

)
drop table office
select * from office
insert into office values('vasanth',20000,5000)
alter table office add revised_salary as (salary+increment)
