create database task10

use task10

create table employees(
EMPLOYEE_ID int,
FIRST_NAME varchar(25),
LAST_NAME varchar(25),
EMAIL varchar(35),
PHONE_NUMBER varchar(20),
HIRE_DATE date,
JOB_ID varchar(10),
SALARY money
)


insert into employees values (2,'VIKRANTH','V','kalai92@gmail.com',954847454,'2023-01-22','DEVELPOER',35000)
insert into employees values (3,'GOKUL','R','GOKULCOL92@gmail.com',8994512345,'2023-01-22','DESIGNER',22000)
insert into employees values (4,'VIJAY','R.V','viay@gmail.com',954347259,'2023-01-22','DESIGNER',25000)
insert into employees values (5,'VIKRAMAN','J','vikram5007@gmail.com',8997845612,'2023-01-22','DATABASE',25000)
insert into employees values (6,'SARATH','S','sarathkalai92@gmail.com',9254727779,'2023-01-22','DESIGNER',29000)
insert into employees values (7,'YAMINI','S','yamini@gmail.com',1234567890,'2023-01-25','DEVELOPER',25000)
insert into employees values (8,'SELVA','S','sselva@gmail.com',1234567890,'2023-01-25','DEVELOPER',32000)
insert into employees values (9,'HARI','A','haria@gmail.com',1234567890,'2023-01-25','DESIGNER',29000)
insert into employees values (10,'VASANTH','Y','vasanthy@gmail.com',1234567890,'2023-01-23','DEVELOPER',30000)
insert into employees values (11,'SHARONN','D','david@gmail.com',1234567890,'2023-01-23','DATABASE',25000)
insert into employees values (12,'DHANA','S','dhana@gmail.com',1234567890,'2023-01-23','DEVELOPER',25000)
insert into employees values (13,'DIVYA PRAKASH','S','dhiviya@gmail.com',1234567890,'2023-01-23','DEVELOPER',25000)
insert into employees values (14,'VENKAT','R','venkat@gmail.com',1234567890,'2023-01-25','DESIGNER',35000)
insert into employees values (15,'DHANA','S','dhana@gmail.com',1234567890,'2023-01-22','DEVELOPER',25000)
insert into employees values (16,'ARUN','J','joseph@gmail.com',1234567890,'2023-01-23','DATABASE',25000)
insert into employees values (17,'HEMANTH','S','hema@gmail.com',1234567890,'2023-01-23','DATABASE',25000)
insert into employees values (18,'HARSHAN','S','harshaagmail.com',1234567890,'2023-01-23','DESIGENER',25000)
insert into employees values (19,'SRI KANTH','R','sri@gmail.com',1234567890,'2023-01-25','DEVELOPER',35000)
insert into employees values (20,'DHARSAHN','P','dharsan@gmail.com',1234567890,'2023-01-22','DEVELOPER',25000)


select * from employees

select first_name,last_name,salary from employees where salary>(select salary from employees where employee_id=16)

select FIRST_NAME,LAST_NAME,JOB_ID
from employees where HIRE_DATE=(select HIRE_DATE from employees where EMPLOYEE_ID=11)

select FIRST_NAME,LAST_NAME,JOB_ID
from(select HIRE_DATE AS HD from employees where EMPLOYEE_ID=11)AS ID,employees as EMP
WHERE ID.HD=HIRE_DATE



select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,i1.avgsal
from (select avg(SALARY) as avgsal from employees)as i1,employees as e
where e.SALARY>i1.avgsal

select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY from 
employees where FIRST_NAME=(select FIRST_NAME from employees where FIRST_NAME='YAMINI')


select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY 
from(select FIRST_NAME as TARGET from employees where FIRST_NAME='YAMINI')AS TAR,employees as src
where src.FIRST_NAME=TAR.TARGET


SELECT  EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,EMAIL,PHONE_NUMBER,HIRE_DATE
JOB_ID FROM(SELECT MIN(SALARY)as mini FROM employees)as minimum,employees as emp
where emp.SALARY between minimum.mini and 26000