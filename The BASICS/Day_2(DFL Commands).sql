/* Create a new table called persons with columns: id, person_name, birth_date, and phone. */
create table persons (
id int not null primary key,
person_name varchar(55) not null,
birth_date date,
phone varchar(15) not null
);
select * from persons;

--  add a new column called email to the persons table
alter table persons
add email varchar(30)

-- delete column phone
alter table persons
drop column phone

-- delete the persons table
drop table persons