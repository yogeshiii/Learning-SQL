select 
OrderID,
OrderDate,
ShipDate,
CreationTime
from Sales.Orders;

-- Function DAY, MONTH, YEAR
select 
OrderID,
CreationTime,
YEAR(CreationTime) as CreationYear,
MONTH(CreationTime) as CreationMonth,
DAY(CreationTime) as CreationDay
from Sales.Orders;

-- Function DATEPART
select 
OrderID,
CreationTime,
DATEPART(year, CreationTime) as Year_Dp,
DATEPART(month, CreationTime) as Month_Dp,
DATEPART(day, CreationTime) as Day_Dp,
DATEPART(hour, CreationTime) as Hour_Dp,
DATEPART(week, CreationTime) as Week_Dp,
DATEPART(quarter, CreationTime) as Quarter_Dp,
YEAR(CreationTime) as CreationYear,
MONTH(CreationTime) as CreationMonth,
DAY(CreationTime) as CreationDay
from Sales.Orders;

-- Function DATENAME
select 
OrderID,
CreationTime,
DATENAME(YEAR, CreationTime) as Year_Dn,
DATENAME(MONTH, CreationTime) as Month_Dn,
DATENAME(DAY, CreationTime) as Day_Dn,
DATENAME(weekday, CreationTime) as Weekday_Dn,
DATEPART(year, CreationTime) as Year_Dp,
DATEPART(month, CreationTime) as Month_Dp,
DATEPART(day, CreationTime) as Day_Dp,
DATEPART(hour, CreationTime) as Hour_Dp,
DATEPART(week, CreationTime) as Week_Dp,
DATEPART(quarter, CreationTime) as Quarter_Dp,
YEAR(CreationTime) as CreationYear,
MONTH(CreationTime) as CreationMonth,
DAY(CreationTime) as CreationDay
from Sales.Orders;

-- TRUNCATE FUNCTION
select 
OrderID,
CreationTime,
DATETRUNC(minute, CreationTime) as Minute_Td,
DATETRUNC(day, CreationTime) as Day_Td,
DATENAME(YEAR, CreationTime) as Year_Dn,
DATENAME(MONTH, CreationTime) as Month_Dn,
DATENAME(DAY, CreationTime) as Day_Dn,
DATENAME(weekday, CreationTime) as Weekday_Dn,
DATEPART(year, CreationTime) as Year_Dp,
DATEPART(month, CreationTime) as Month_Dp,
DATEPART(day, CreationTime) as Day_Dp,
DATEPART(hour, CreationTime) as Hour_Dp,
DATEPART(week, CreationTime) as Week_Dp,
DATEPART(quarter, CreationTime) as Quarter_Dp,
YEAR(CreationTime) as CreationYear,
MONTH(CreationTime) as CreationMonth,
DAY(CreationTime) as CreationDay
from Sales.Orders;

 -- FUNCTION EOMONTH
 SELECT
 OrderID,
 CreationTime,
 EOMONTH(CreationTime) as EndOfMonth
 from Sales.Orders;

 -- How many orders wre placed each year?
 select
 YEAR(OrderDate),
 count(*) as no_of_orders
 from Sales.Orders
 GROUP BY YEAR(OrderDate);

 -- How many orders wre placed each month?
 select
 DATENAME(MONTH,OrderDate) AS OrderDate,
 count(*) as no_of_orders
 from Sales.Orders
 GROUP BY DATENAME(MONTH,OrderDate);

 -- Show all the orders from the monyh of feb
 select*
 from Sales.Orders
 where MONTH(OrderDate) = 2;

  
