create database ORG
 use ORG
 
 create table Worker(
 Worker_id int primary key,
 First_name varchar(25),
 Last_name varchar(20),
 Salary int,
 Joining_date DATETIME,
 Department varchar(20)



 )

 
 select * from Worker
 drop table Worker

 insert into Worker values(1,'vipul','diwan',200000,'2014-06-11 09:00:00','Account'),(2,'Satish','Kumar',75000,'2014-01-20 09:00:00','Account'),(3,'Geetika','Chauhan',90000,'2014-04-11 09:00:00','Admin'),(4,'vimal','diwan',300000,'2014-06-11 09:00:00','Developer'),(5,'Sathya','Kumar',65000,'2014-01-20 09:00:00','Account'),(6,'Gowri','Chauhan',90000,'2014-04-11 09:00:00','Tester')
 select * from Worker


 create table Bonus(
 Worker_ref_id int,
 Bonus_amount int,
 Bonus_date Datetime,
  foreign key(Worker_ref_id) references Worker(Worker_id) on delete cascade
 

 )
 


 select * from Bonus

INSERT INTO Bonus(Worker_ref_id,Bonus_amount,Bonus_date) VALUES
(1, 5000, '2016-02-02'),
(2, 3000, '2016-06-01'),
(3, 4000, '2016-02-02'),
(4, 4500, '2016-02-02'),
(5, 3500, '2016-06-01'); 


select first_name as fname from Worker
SELECT first_name,UPPER(first_name) AS UnicodeOfFirstChar from Worker;
SELECT first_name,LOWER(first_name) AS UnicodeOfFirstChar from Worker;

select distinct Department from Worker

SELECT SUBSTRING(first_name,1,3) FROM Worker;


select distinct Department,len(Department)as departmentlength from Worker
select first_name+''+last_name as addedcolumes from Worker
select * from Worker where first_name='satish' or first_name='vipul'
select * from Worker where Department='Admin'
select * from Worker where first_name   like '%a'
select * from Worker where first_name   like '%a%'
