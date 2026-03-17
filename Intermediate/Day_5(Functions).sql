/* Orders data are stores in separete table. combine all without duplicate */
SELECT
       'Order' AS SourceTable
      ,[OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
FROM Sales.Orders
UNION
select
       'OrderArchive' AS SourceTable,
       [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
From Sales.OrdersArchive
Order by OrderID;

-- Show the first name with country in one column
Select
first_name,
country,
CONCAT(first_name, ' ' , country) AS name_country
from customers

--converts customers firstname to lowercase
select first_name,
LOWER(first_name) AS first_name_lowercase,
UPPER(first_name) AS first_name_uppercase
from customers
-- USE TRIM
select first_name,
len(first_name) as name_length,
len(TRIM(first_name)) as trim_len
from customers

-- Remove dashes(-) from phone numbers
select
'123-456-789' as ph_no,
REPLACE('123-456-789', '-', '') as clean_ph_no

select
'report.txt' AS report_name,
REPLACE('report.txt', '.txt', '.csv') as csv_report

-- Calculate lenth of first name of each customers
select
first_name as NAME,
len(first_name) as name_length
from customers

