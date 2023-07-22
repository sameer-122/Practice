-- All scripts to insert and update table
-- insert into employees
-- values(3,'sam','tech',200000,24);

alter table employees
add column if not exists new_id serial;
update employees
set new_id=id;
alter table employees
DROP COLUMN if exists id;

alter table employees
rename column new_id to id;

alter table employees
add primary key (id);
