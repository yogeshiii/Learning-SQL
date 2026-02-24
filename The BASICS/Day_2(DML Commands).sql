insert into customers (id, first_name, country, score)
values (8, 'Siya', null, null);

select * from customers;

-- change the score of customer 6 to 0
update customers
set score = 100
where id = 6

-- change the score of customers with id 2 to 0 and update country to 'UK'
update customers
set score = 0, country = 'UK'
where id = 2

-- update all customers with a null score by setting their score to 0
update customers
set score = 0
where score is null

-- delete all customers with ID greater than 5
delete customers
where id > 5

-- clear the table
truncate table customers
select * from customers