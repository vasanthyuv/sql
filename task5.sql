
CREATE TABLE Trainees (
TRAINEE_ID INT NOT NULL PRIMARY KEY,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

select * from Trainees

INSERT INTO Trainees
(TRAINEE_ID, FIRST_NAME, LAST_NAME, SALARY,
JOINING_DATE, DEPARTMENT) VALUES
(002, 'Niharika', 'Verma', 80000, '2023-03-20', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '2023-03-20', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '2023-03-20', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '2023-03-20', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '2023-03-20', 'Account'),
(007, 'Satish', 'Kumar', 75000, '2023-03-20', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '2023-03-20', 'Admin');

select COUNT(DEPARTMENT) as 'count of employees',DEPARTMENT from Trainees group by DEPARTMENT

SELECT DATEADD(day, 5, JOINING_DATE) AS induction_program
FROM Trainees;

select JOINING_DATE,
choose(month([JOINING_DATE]),'January','February','March','April','May','June',
      'July','August','September','October','November','December') AS month_name
  FROM Trainees;

SELECT 
     COALESCE(DEPARTMENT, 'AlL Department Total') as DEPARTMENT, SUM(salary) AS TotalSalary  
FROM
    Trainees
GROUP BY ROLLUP (DEPARTMENT);


select top 3 * from Trainees order by newid()

 create table names(
 firstname varchar(20),
 age int,
 lastname varchar(20),
 constraint compositkey primary key(firstname,lastname)
 )
 select * from names





 SELECT DEPARTMENT,
CASE DEPARTMENT 
    WHEN 'Admin' THEN 'CGVAK DEVELOPER DEPARTMENT'  
    WHEN 'Account' THEN 'CGVAK DESIGNER DEPARTMENT'  
    WHEN 'HR' THEN 'CGVAK HR DEPARTMENT'  
    ELSE 'CGVAK LEAD DEPARTMENT'  
END AS DEPARTMENT  
FROM Trainees;


SELECT DEPARTMENT,SALARY, IIF(SALARY>10000, 'MORE', 'LESS')
FROM Trainees;


CREATE SEQUENCE SEQ
AS INT
START WITH 1 
INCREMENT BY 1 

SELECT * from sys.sequences where name='SEQ'

SELECT NEXT VALUE FOR SEQ

INSERT INTO Trainees VALUES
(12,  'Niharika', 'Verma', NEXT VALUE for SEQ, '2023-03-20', 'Admin');
select * from Trainees

CREATE TABLE employees (
    emp_id INT IDENTITY(1,1),
    emp_name VARCHAR(50),
    emp_age INT
);

select * from employees

set IDENTITY_INSERT employees ON;
INSERT INTO employees (emp_id, emp_name, emp_age)
VALUES (100, 'John Doe', 30);
set IDENTITY_INSERT employeeS OFF;
INSERT INTO employees
VALUES ( 'John Doe', 30);




CREATE SYNONYM syn for ORG.dbo.Bonus
select * from syn