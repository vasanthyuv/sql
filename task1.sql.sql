---create database
create database vasanth
--table
use vasanth
CREATE TABLE Trainees (
Trainee_ID INT PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT,
JOINING_DATE DATE,
DEPARTMENT CHAR(25)
)
select * from friends
insert into friends values('vasanth',12),('vikram',12),('hari',12)
insert into friends(name)values('diva')
select age from friends where age IS NULL
select age from friends where age IS NOT NULL
--ALTER

ALTER table friends add number int
drop table trainees



 
insert into trainees values(100,'Vasanth','yuvaraj',200000,'2023-01-23','developer'),
insert into trainees values(101,'Hari','karthi',200000,'2023-01-23','developer'),
insert into trainees values(102,'Vikram','rv',200000,'2023-01-23','developer'),
(103,'Hemanth','kumar',200000,'2023-01-23','fullstack')
insert into trainees values(104,'divya','prakash',20000,'2023-01-23','developer'),
(105,'vignesh','vickey',30000,'2023-01-23','php developer'),
(106,'Harshan','s',200000,'2023-01-23','java developer'),
(107,'selva','kumar',100000,'2023-01-23','fullstack'),
(108,'Arjun','venkat',50000,'2023-01-23','fullstack'),
(109,'Srikanth','vijay',200000,'2023-01-23','fullstack'),
(110,'Karthi','k',200000,'2023-01-23','python developer')

select * from Trainees
select * from Trainees where FIRST_NAME like '[JT]%' COLLATE SQL_Latin1_General_CP1_CS_AS 
select * from Trainees where FIRST_NAME like '[jt]%' COLLATE SQL_Latin1_General_CP1_CS_AS;

select * from Trainees where SALARY>=20000 and SALARY<=50000 
select * from Trainees where FIRST_NAME LIKE '%i'
select DISTINCT SALARY FROM Trainees
select * from Trainees where DEPARTMENT LIKE 'developer' or DEPARTMENT LIKE 'designer'  
(or)
select * from Trainees where DEPARTMENT IN ('designer','developer')
select * from Trainees where Trainee_ID <=5
SELECT *
FROM Trainees
ORDER BY Trainee_ID
OFFSET 2 ROWS
FETCH FIRST 4 ROWS ONLY;
select * from trainees order by trainee_id offset 0 rows fetch first 5 rows only

select * from Trainees order by Department desc
select * from Trainees where LAST_NAME like '__a%'    

 





