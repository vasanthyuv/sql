use vasanth1

create table RECORDS(
student_id int primary key,
student_name varchar(20),
department varchaR(15),
score int 


)

insert into RECORDS values(1,'vasanth','bcom',78),(2,'vikram','bca',78),(3,'hari','mba',78),
(4,'divakar','bsc',82),
(5,'akash','bba',75),
(6,'henga','bcom',94),
(7,'vasanth.rv','bba',88),
(8,'divakaran','bsc',82),
(9,'akashai','bba',75),
(10,'hengadharan','bcom',94),
(11,'vasanth kumar','bba',88),
(12,'divak','bsc',82),
(13,'akashitha','bba',75),
(14,'henga','bcom',94),
(15,'vasanth.rv','bba',88),
(16,'divakaran','bsc',82),
(17,'akashai','bba',75),
(18,'hengadharan','bcom',94),
(19,'vasanth kumar','bba',88),
(20,'vasu','bba',88)

select * from RECORDS

create index depart on RECORDS(department)

create index depart_bca on RECORDS(department) where department='bca'

create view record
as 
select student_name from RECORDS
where department='bca'

select * from record

select student_name,department,
rank() over (order by score desc) as ranks 
from RECORDS


select student_name,department,score,
dense_rank() over (partition by department order by score desc) as ranks 
from RECORDS

create database task6 
use task6
create table manager (
manager_name varchar(20),
manager_id int primary key,

)

insert into manager values('vasanth',1),('vikram',2),('hari',3)


create table employees(
employee_id int primary key,
employee_name varchar(20) ,

employee_mid int default 1 foreign key(employee_id)  references manager(manager_id) on delete cascade on update set default,
department varchar(20)

)

drop table employees
insert into employees values(1,'vas',1,'admin'),(2,'vik',2,'developer'),(3,'har',3,'database developer' )
create view company 
as
select manager_name,manager_id,employee_id,employee_name,employee_mid,department
from manager as m
full join 
employees as e
on m.manager_id=e.employee_mid

select * from employees

drop table employees




create table manager (
manager_name varchar(20),
manager_id int primary key,

)

insert into manager values('vasanth',1),('vikram',2),('hari',3)

create table employees(
employee_id int primary key,
employee_name varchar(20) ,

employee_mid int default 1 foreign key(employee_mid)  references manager(manager_id) on delete cascade on update set default,
department varchar(20)

)


insert into employees values(1,'vas',1,'admin')
insert into employees values(3,'vik',3,'developer')

 
 delete from manager where manager_id=3
 select * from employees