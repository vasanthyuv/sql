CREATE DATABASE TASKS1

USE vasanth1


CREATE TABLE SALESMAN (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(20),
    city VARCHAR(10),
    commission DECIMAL(4,2)
 
);
INSERT INTO SALESMAN VALUES( 5001 , 'James Hoog' , 'New York' , 0.15), (5002 , 'Nail Knite ', 'Paris', 0.13),
  ( 5005 , 'Pit Alex '  , 'London'   , 0.11),(5006 , 'Mc Lyon '   ,' Paris '   , 0.14),
       (  5007 , 'Paul Adam ' ,' Rome'     , 0.13),
        ( 5003 ,' Lauson Hen' , 'San Jose ', 0.12)

SELECT * FROM SALESMAN

create table Customer(
customer_id int primary key,
cust_name varchar(15),
city varchar(15),
grade int,
salesman_id int foreign key references SALESMAN(salesman_id) 



)

select * from Customer

insert into Customer values(3002 , 'Nick Rimando',' New York',  100, 5001),
(3007,'Brad Davis','New York',200,5001),(3004,'Graham Zusi','California',200,5001),
(3005,'Julian Green','London',300,5002),(3008,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Moscow',200,5007),(3001,'Brad Guzan','London',301,5005)


create table orders(
ord_no int,
purch_amount money,
ord_date DATE,
customer_id int foreign key references Customer(customer_id),
salesman_id int foreign key references Salesman(salesman_id)
)
select * from orders
insert into orders values(70001,150.5,'2012-10-05',3005,5002),
  (70009,270.65,2012-09-10,3001,5005),(70002,65.26,2012-06-05,3009,5003),


  insert into orders values (70009, 270.65 ,'2012-09-10' , 3001,5005),
(70002, 65.26 , '2012-10-05', 3002 ,5001),
(70004,110.5 , '2012-08-17 ' ,3009 , 5003),
(70007, 948.5,'2012-09-10'  ,3005 ,5002),
(70005,2400.6,'2012-07-27',3007 , 5001),
(70008,5760, '2012-09-10',3002 ,5001),
(70010 , 1983.43,'2012-10-10',  3004 ,5006)


select s.salesman_id,c.cust_name,c.city from SALESMAN AS s
inner join 
Customer as c 
on s.city=c.city


select s.salesman_id,s.commission,c.city,c.cust_name from SALESMAN AS s
inner join 
Customer as c 
on s.salesman_id=c.salesman_id
where commission >0.12




select s.salesman_id,s.commission,c.grade,c.cust_name,o.ord_date,o.ord_date,o.purch_amount from SALESMAN AS s
full join 
Customer as c 
on s.salesman_id=c.salesman_id
full join
orders as o
on c.customer_id=o.customer_id




select o.ord_date,o.purch_amount,c.cust_name,c.city from Customer AS c
inner join 
orders as o
on c.customer_id=o.customer_id
where purch_amount between 500 and 2000






select s.salesman_id,s.city,c.grade,c.cust_name,c.city from SALESMAN AS s
inner join 
Customer as c 
on s.city=c.city
order by customer_id desc

