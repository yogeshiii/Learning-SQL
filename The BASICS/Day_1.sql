-- this is a comment
/* this
is a comment*/

-- Retrive all customer data
SELECT *
FROM customers

-- Retrive all order data
select*
from orders

-- select specific columns
select 
	first_name,
	country,
	score
from customers
where score > 500

-- retrive customers with score not equal to 0
select 
	first_name,
	country,
	score
from customers
where score != 0

-- retrive all the customers and sort the result with highest score first
select *
from customers
order by country asc, score desc

-- find the total score for each country
select
country,
sum(score)
from customers
group by country

-- find the total score and total number of customers for each country
select
country,
SUM(score) as total_score,
COUNT(id) as total_customers
from customers
group by country