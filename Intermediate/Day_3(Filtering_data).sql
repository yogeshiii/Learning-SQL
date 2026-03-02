-- retrive all customers from germany
select*
from customers
where country = 'Germany'

-- retrive customers with a score greater than 100
select*
from customers
where score > 100

-- Retrive all the customers with score less than 500
select *
from customers 
where score < 500

-- Retrive all customers with country germany and score greater than 100
select *
from customers
where country = 'Germany' AND score > 100

-- retrive all customers with country UK or score greater than 100
select *
from customers
where country = 'UK' OR score > 100

-- Retrive all customers with score NOT less than 100
select*
from customers
where not score < 100

-- retrive all the customers from either germany or uk
select *
from customers
where country in ('Germany', 'UK')

--find all the customers with first name first letter 'M'
select*
from customers
where first_name like 'M%'

-- customers with first-name ends with 'n'
select*
from customers
where first_name like '%n'

-- Get all the customers along with thein orders,but only for who have placed the order
select*
from customers
INNER JOIN orders
ON id = customer_id

-- Getting all the customers along with their orders, including those who have not placed any order
select *
from customers
LEFT JOIN orders
ON customers.id = orders.customer_id

-- Getting all customers along with their orders, including orders without matching customers
select*
from customers
RIGHT JOIN orders
ON customers.id = orders.customer_id