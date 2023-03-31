create database task13
use task13




--a---
--1. --

Create  table Hobbies
(HobbyID INT primary key,
HobbyName varchar(25) unique )


CREATE PROCEDURE InsertHobby
  @HobbyID INT,
  @HobbyName VARCHAR(50)
AS
BEGIN
  INSERT INTO Hobbies (HobbyID, HobbyName)
  VALUES (@HobbyID, @HobbyName);
END;
 
EXEC InsertHobby 1, 'web series';
EXEC InsertHobby 2, 'vedio games';
EXEC InsertHobby 3, 'football';

select * from Hobbies


--2.--

create table duplicate(
id int primary key ,
name varchar(10) unique 
)



insert into duplicate values(1,'vasanth'),(2,'vikram'),(3,'hari')

create procedure noduplicate(@id int,@name varchar(10))
as
begin try
insert into duplicate values(@id,@name)
end try 
begin catch 
print 'duplicate value is not accepted'
end catch 

exec noduplicate 1,'vasanth'

--3--



create procedure backup_store(@id int,@name varchar(10))
as
begin try
insert into duplicate values(@id,@name)
end try 
begin catch 
insert into backup_table values(@id,@name)
end catch



create table backup_table(
id int,
name varchar(10)
)

exec backup_store 2,'vasanth'

select * from backup_table


--b--
create procedure error(@num int,@num2 int)
as
begin
declare @result int
set @result=0
if @num=@num2
begin
set @result = @num*@num2
print 'the product of two number is:'+cast(@result as varchar)
end
else
begin
raiserror ('the numbers are not equal',16,1)
end 
end

exec error 2,2

exec error 3,6



--c- 
create procedure contain(@name varchar(2))
as
begin
if (@name like '[A,D,H,K,P,R,S,T,V,Y]%')
begin 
insert into  friends values(@name)
end 
else 
begin 
throw 50001,'the give name is not valid',1;
end
end

exec contain A

exec contain B


select * from friends


create table friends(
name varchar(2)
)
