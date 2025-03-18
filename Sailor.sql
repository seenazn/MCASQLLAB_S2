create table sailors11
(
s_id int primary key,
s_name varchar(10),
rating int,
age int,
);
insert into sailors11 values
(22,'Dustin',7,45),
(29,'brutus',1,33),
(31,'Lubber',8,55.5),
(32,'Andy',8,25.5),
(58,'Rusty',10,35),
(64,'Horataio',7,35),
(71,'Zorba',16,10),
(76,'Bob',64,9);
select *from sailors;


create table boat1
(
b_id int primary key,
b_name varchar(15),
color varchar(10),
);
insert into boat1 values
(101,'Interlake','blue'),
(102,'Interlake','red'),
(103,'Clipper','green'),
(104,'Marine','red');
select* from boat1;



create table reserve1
(
s_id int foreign key references sailors11,
b_id int foreign key references boat1,
day date,
);
insert into reserve1 values
(22,101,'10-10-98'),
(22,102,'10-10-98'),
(22,103,'08-10-98'),
(22,104,'07-10-98'),
(31,102,'10-10-98'),
(31,103,'06-10-98'),
(31,104,'12-10-98'),
(64,101,'05-10-98'),
(64,102,'08-10-98'),
(76,103,'08-10-98');
select* from reserve1;




