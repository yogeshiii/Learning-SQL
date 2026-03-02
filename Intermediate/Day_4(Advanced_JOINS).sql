-- Get customers who haven't place any order
select *
from customers
left join orders
on customers.id =orders.customer_id
where orders.customer_id is null

-- Find the customers without orders and orders without customers
select * 
from customers as c
full join orders as o
on c.id = o.customer_id
where c.id is null or o.customer_id is null

-- Get all the customers along with thier orders, but only for customers who have placed an order
select*
from customers as c
left JOIN orders as o
on c.id = o.customer_id
where o.customer_id is not null

--Generate all the possible combinations of customers and orders
select * 
from customers
cross join orders

