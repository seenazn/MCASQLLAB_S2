create table employee
(
id int primary key,
name varchar(10),
age int,
gender char,
height int,
);       

insert into employee values
(1,'reena',22,'f',155),
(2,'swetha',23,'f',153),
(3,'rayar',24,'m',148),
(4,'divya',25,'f',156),
(5,'davis',26,'m',158);

select * from employee;
select height from employee;
select gender from employee;
select* from employee where gender='f';
select distinct gender from employee;
select distinct name from employee;
select count(*) as number_of_employees from employee;
alter table employee add salary int;
select* from employee;
update employee set salary=3000;
select* from employee;
update employee set salary=4000 where id=1;
update employee set salary=6000 where id=2;
update employee set salary=5000 where id=3;
update employee set salary=7000 where id=4;
update employee set salary=8000 where id=5;
select* from employee;
