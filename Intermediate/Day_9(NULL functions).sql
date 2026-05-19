-- NULL Functions
select
CustomerID,
Score,
COALESCE(Score,0) as Score_with_Default,
AVG(Score) OVER() as Average_Score_Before,
avg(coalesce(Score,0)) over() as Average_Score_After
from Sales.Customers

-- Display the full name of customer in single feildby merging first and last name and add 10 bonus to each customer's score
select
CustomerID,
FirstName,
LastName,
isnull(FirstName,' ') + ' ' + isnull(LastName,' ') as FullName,
coalesce(Score,0) + 10 as Score_with_Bonus
from Sales.Customers

-- sort the customers from lowest to highest scores, with nulls appering last
select
CustomerID,
Score,
case when Score is null then 1 else 0 end flag
from Sales.Customers
order by case when Score is null then 1 else 0 end, Score

-- find the sake price for each order by dividing sales by quantity
select
OrderID,
Sales,
Quantity,
Sales / nullif(Quantity,0) as Sale_Price
from Sales.Orders