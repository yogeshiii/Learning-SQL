select
OrderID,
CreationTime,
FORMAT(CreationTime, 'MM-dd-yyyy') as USA_Format,
FORMAT(CreationTime, 'dd') as dd,
FORMAT(CreationTime, 'ddd') as dd,
FORMAT(CreationTime, 'dddd') as dd,
FORMAT(CreationTime, 'MM') as MM,
FORMAT(CreationTime, 'MMM') as MMM,
FORMAT(CreationTime, 'MMMM') as MMMM
from Sales.Orders

--Show CreationTime Using The following format:
-- Day Wed Jan Q1 2025 12:34:56 PM
select
OrderId,
CreationTime,
'Day ' + FORMAT(CreationTime,'ddd MMM') +' Q'+ DATENAME(quarter, CreationTime) + ' ' + FORMAT(CreationTime,'yyyy hh:mm:ss tt') as custom_format
from Sales.Orders

-- CONVERT function
select
CreationTime,
CONVERT(DATE, CreationTime) as [Datetime to Date CONVERT]
from Sales.Orders

select
CreationTime,
CONVERT(VARCHAR, CreationTime, 32) as [USA Std. Style:32],
CONVERT(VARCHAR, CreationTime, 34) as [EURO Std. Style:32]
from Sales.Orders