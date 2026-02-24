/* find avg score of each country and return only those with avg score greater than 430*/
select
country,
AVG(score) AS avg_score
from customers
WHERE score != 0
group by country
having avg(score) > 430

-- return unique countries
select
distinct country
from customers

-- retrive only 3 customers
select top 3 * from customers

-- retrive top 3 customers with highest scores
select top 3*
from customers
order by score desc

-- retrive tow most recent orders
select top 2*
from orders
order by order_date desc
