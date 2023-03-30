create database task13
use task13

create table section(
class_id varchar(7) foreign key references course(class_id),
class_num int primary key,
year int,
room_no varchar(6),
time_slot_id int foreign key references time_slot(time_slot_id),
capacity int
)

create table course (
class_id varchar(7) primary key,
name varchar(25),
dept_name varchar(25) foreign key references department(dept_name),
credits numeric(5),
description varchar(8000)
)
select * from course

create table department(
dept_name varchar(25) primary key,
building varchar(20),
budget numeric(18,2)
)


create table time_slot (
time_slot_id int primary key,
days varchar(8),
start_time datetime,
end_time datetime
)

create table takes(
user_id  int foreign key references user1(user_id),
class_num int  foreign key references section(class_num),
semester varchar(7),
year int,
grade varchar(2)
)


create table teachers(
user_id int foreign key references user1(user_id),

class_num int foreign key references section(class_num),
semester varchar(7),
year int
)

create table requisite(
class_id varchar(7) foreign key references course(class_id),
type varchar(4)
)


create table user_salary(
user_id int foreign key references user1(user_id),
salary numeric(18,2)
)


create table user_balance(
user_id int foreign key references user1(user_id),
balance numeric(18,2)
)

create table user_number(
user_id int foreign key references user1(user_id),
number numeric(15,0),
description varchar(15)
)


create table user_role(
user_id int foreign key references user1(user_id),
role_id int foreign key references role(role_id)
)

create table role(
role_id int primary key,
role_name varchar(3) ,
 role_full_name varchar(15)
 )

create table user_address(
user_id int foreign key references user1(user_id),
address varchar(80),
apt_num varchar(15),
city varchar(25),
state varchar(2),
zip numeric(5,0),
description varchar(15)
)

create table user1(
user_id int primary key,
user_name varchar(16) ,
password varchar(40)
)



create table user_finaid_map(
user_id int foreign key references user1(user_id),
aid_id int foreign key references finaid_main(aid_id),
semester varchar(7),
year int,
offered numeric(18,2),
accepted numeric(18,2)
)

create table finaid_main(
aid_id int primary key,
name varchar(50),
category varchar(15)
)


create table user_email(
user_id int foreign key references user1(user_id),
email varchar(50) primary key,
description varchar(15)
)

create table hold_main(
user_id int foreign key references user1(user_id),
hold_id int primary key,
name varchar(25),
description varchar(15)
)


create table user_hold_map(
user_id int foreign key references user1(user_id),
hold_id int foreign key references hold_main(hold_id)
)