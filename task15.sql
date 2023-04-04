create database task11

use task11

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
insert into students values (7,'YAMINI','IT',2021)
insert into students values (8,'SELVA','BCOM',2022)
insert into students values (9,'DHANA','BA',2023)
insert into students values (10,'DIVYA','IT',2020)
insert into students values (11,'SHARON','BCA',2022)
insert into students values (12,'HARITHA','BA',2021)
insert into students values (13,'RANITHA','BCOM',2021)
insert into students values (15,'HARISHMITHA','BCA',2023)
insert into students values (16,'SIVA','BCA',2022)
insert into students values (17,'HEMANTH','BCA',2022)
insert into students values (18,'HARSHAN','BCA',2021)
insert into students values (19,'SRI KANTH','BCA',2021)
insert into students values (20,'DHARSAHN','BCA',2021)


select * from students

select yearofcompletion,BCA,BCOM,IT,BA from 
(select department,yearofcompletion,sid from students) as table1
pivot 
(count(sid) for department in(BCA,BCOM,IT,BA)) as table2
order by yearofcompletion;


--pivot and unpivot--

select sid,department,yearofcompletion from (
select yearofcompletion,BCA,BCOM,IT,BA from 
(select department,yearofcompletion,sid from students) as table1
pivot 
(count(sid) for department in(BCA,BCOM,IT,BA)) as table2) pivoted
unpivot
(sid for department in(BCA,BCOM,IT,BA)
) as unpivoted


--library--
create database library1
use library1

create table customer(
customer_id int primary key,
customer_name varchar(20),
)
insert into customer values(1,'vasanth'),(2,'vikram'),(3,'hari')
select * from customer

create table books(
book_id int primary key,
book_name varchar(20),
)
insert into books values(100,'Beloved'),(101,'Invisible Man'),(102,'A Passage to India')
SELECT * FROM BOOKS

create table library_management(
customer_id int default 2 foreign key references customer(customer_id)on update set default,
book_id int default 0 foreign key references books(book_id) on update set default,
)
drop table library_management

select * from library_management
insert into library_management values(1,101),(2,100),(3,102)


update customer set customer_id=4 where customer_id=1


--auto commit and auto rollback--
begin tran
update students 
set department='bsc'
where sid=4
select @@trancount as no_of_transaction


--implicit transaction--
set implicit_transactions on
update 
   students
   set 
   sname='vasu',
   department='bcom'
   where
   sid=3
   select 
   iif(@@options & 2=2,
   'implicit transaction mode on',
   'Implicit Transaction Mode OFF'
   )
   as 'transaction mode'
   select 
   @@trancount as opentransactions 
   commit tran 
   select 
   @@trancount as opentransaction 

   set implicit_transactions off


   --explicit transaction--

   --1.--
   --WITH COMMIT
BEGIN TRAN
insert into students 
values(21,'DHARSAHN','BCA',2021)

SELECT @@TRANCOUNT AS OpenTransactions 
COMMIT TRAN 
SELECT @@TRANCOUNT AS OpenTransactions

select * from students

--2--
BEGIN TRAN
UPDATE students 
SET    sname = 'vasanth'
where sid=3
 
 
SELECT * FROM students WHERE sid=3
 
ROLLBACK TRAN 
 
SELECT * FROM students WHERE sid=3

--3--

BEGIN TRANSACTION 
INSERT INTO students
VALUES(22,'HEMANTH','BCA',2022)
SAVE TRANSACTION InsertStatement
DELETE students  WHERE sid=6
SELECT * FROM students 
ROLLBACK TRANSACTION InsertStatement
COMMIT

SELECT * FROM students