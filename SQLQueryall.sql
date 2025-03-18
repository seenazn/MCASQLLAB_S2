create table job
(
job_id_number int primary key,
job_title varchar(25),
salary int,
);
insert into job values
(1,'engineer',15000),
(2,'scrum master',22000),
(3,'web developer',50000),
(4,'teacher',42000),
(5,'nurse',80000),
(6,'gamer',100000);
select* from job;





create table region
(
id int primary key,
name varchar(30),
);
insert into region values
(1,'Latin america'),
(2,'Australia'),
(3,'Europe'),
(4,'London'),
(5,'East asia'),
(6,'south asia');
select* from region;





create table countrie
(
country_id int primary key,
country_name varchar(25),
region_id int foreign key references regions(id),
);
insert into countrie values
(10,'Europe',1),
(11,'america',2),
(12,'south america',3),
(13,'north america',4),
(14,'australia',5),
(15,'london',6);
select* from countrie;




create table location
(
location_id int primary key,
street_address varchar(50),
postal_code int,
city varchar(50),
state_province varchar(50),
country_id int foreign key references countrie(country_id),
);
insert into location values
(1,'jewstreet',4321,'kochi','eranakulam',10),
(2,'londonstreet',2543,'mundur','palakkad',11),
(3,'greenstreet',5562,'alappi','alapuzha',12),
(4,'whitestreet',7656,'yendeyar','kottayam',13),
(5,'blackstreet',2561,'alathur','palakkad',14),
(6,'goldstreet',3431,'theruv','trissur',15);

select*from location;


create table departmentss
(
department_id int primary key,
department_name varchar(20),
location_id int foreign key references location,
);
insert into departmentss values
(10,'chemistry',1),
(11,'chemistry',2),
(12,'chemistry',3),
(13,'chemistry',4),
(14,'chemistry',5),
(15,'chemistry',6);

select *from departmentss;





create table employees2
(
Employee_id int primary key,
first_name varchar(25),
last_name varchar(25),
email_id varchar(30),
phone_number varchar(10),
hire_date date,
job_id int foreign key references job,
salary_number int,
manager_id int,
department_id int foreign key references departmentss,
);
insert into employees2 values
(1,'sitha','ram','seetha@gmail.com','4567843210','2023-02-25',1,22000,111,10),
(2,'linta','tom','tom@gmail.com','4567843345','2023-03-23',2,22000,112, 11),
(3,'shefa','aju','aju@gmail.com','4567843786','2023-04-27',3,22000,113, 12),
(4,'riya','roy','riya@gmail.com','4567843299','2023-05-29',4,22000,114, 13);
select*from employees2;




create table dependants
(
dependant_id int primary key,
first_name varchar(25),
last_name varchar(25),
relationship varchar(15),
employee_id int foreign key references employees2,
);
insert into dependants values
(10,'riya','roy','wife',1),
(11,'niya','rosh','wife',2),
(12,'priya','raghav','wife',3),
(13,'divya','unni','wife',4);
select*from dependants;