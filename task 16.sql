create database  task16
use task16


CREATE TABLE students(
sid int,
sname varchar(25),
department varchar(5),
yearofcompletion int
)



insert into students values(1,'VIGNESH','BCA',2023)
insert into students values (2,'HARI','BCA',2022)
insert into students values (3,'VASANTH','BCOM',2021)
insert into students values (4,'VIKRAM','BCA',2023)
insert into students values (5,'VENKAT','BCOM',2022)
insert into students values (6,'ARUL','IT',2020)

select * from students

alter trigger dml_revoke
on students 
for insert,update,delete
as
begin 
if DATEPART(DW,GETDATE())= 1 or  DATEPART(DW,GETDATE())=7
begin
print 'dml operations are restricted on saturday and sunday'
rollback transaction
end 
end

insert into students values(6,'ARUL','IT',2020)


---2---
alter TRIGGER delete_trigger
ON students
FOR  DELETE
AS
BEGIN
  IF DATEPART(HH,GETDATE()) between 11 and 15
  BEGIN
    PRINT 'INVALID TIME'
    ROLLBACK TRANSACTION
  END 
END

insert into students values(6,'ARUL','IT',2020)


---3----
create trigger rename 
on database 
for create_table
as 
begin 
print'you create table'
end

create table children(
num int
)

alter trigger alter1
on database 
for alter_table
as 
begin 
print'you alter table'
end

alter table children add department varchar(20)



create trigger drop1
on database 
for drop_table
as 
begin 
print'you droped a  table'
end

drop table children

create trigger rename1
on database 
for rename
as 
begin 
print'you renamed  a  table'
end

sp_rename 'students','childrens'

