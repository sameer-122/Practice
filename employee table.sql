create table if not exists public.employees(
	id int primary key,
	name varchar(50),
	department varchar(50)
);
-- insert into employees(id,name,department) values
-- (1,'John Doe','HR'),
-- (2,'Jane Smith','Finance');
select * from employees where salary is not null;

-- ALTER TABLE employees
-- ADD salary int,
-- Add age int;
