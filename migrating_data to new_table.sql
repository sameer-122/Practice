create table if not exists New_Employees(
	id serial primary key,
	name varchar(50),
	department varchar(50),
	salary int,
	age varchar(50)
);
insert into New_Employees
select id,name,department,salary,age from Employees;

select * from New_Employees;