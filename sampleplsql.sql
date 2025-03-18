create table job
(
job_id int primary key,
job_title varchar(25),
salary int
);
insert into job values
(2,'Engineer',35000),
(3,'Teacher',55000),
(4,'Nurse',850000);
select *from job;
