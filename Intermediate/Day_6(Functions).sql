--Retrive first two characters from each name
select 
First_name as Name, 
LEFT(TRIM(First_name), 2) as First_char
from customers

-- Retrive last two characters from name
select First_name as Name,
RIGHT(First_name,2) as last_2_char
from customers

-- Retrive list of customers's first name after removing the first character
 select First_name as Name,
 SUBSTRING(First_name, 2, LEN(First_name)-1) as Name_without_first_char
 from customers

 -- Retrive list of customers's first name after removing the last character
 select First_name as Name,
 SUBSTRING(First_name, 1, LEN(First_name)-1) as Name_without_last_char
 from customers

 -- ROUNDING OFF
 SELECT
 3.516 AS OriginalValue,
 ROUND(3.516, 2) AS Rounded_2_Value,
 ROUND(3.516, 1) AS Rounded_1_Value,
 ROUND(3.516, 0) AS Rounded_0_Value

 -- ABS
 Select -10 as OriginalValue, ABS(-10) as AbsoluteValue



