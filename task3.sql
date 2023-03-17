use vasanth1
 create table Department(
 Deptid int primary key,
 Deptname varchar(20)
 ) 
 select * from Department  

 create table Address(
 Addressid int primary key,
 city varchar(15),
 state varchar(20),
 pincode int


 )
 select * from Address

 create table Employee(
 id int identity(1,1),
 name varchar(20) not null,
 designation varchar(20) not null,
 Deptid int foreign key references Department(Deptid),
 mobile1 int unique,
 mobile2 int unique,
 streetaddress varchar(20) not null,
 Addressid int foreign key references Address(Addressid)




 )


 