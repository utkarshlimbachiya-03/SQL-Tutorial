# Limit is the mimit of rows that want to display.
Select *
from parks_and_recreation.employee_demographics
Order by first_name
LIMIT 2 , 5; # Offset, Limit

# Offset skips the first 2 rows and returns the next 5
Select *
from parks_and_recreation.employee_demographics
Order by first_name
LIMIT 5  OFFSET 2;


# Aliasing is temporary name for a column or table used to make query result.  
Select occupation, AVG(salary) AS avg_salary
from parks_and_recreation.employee_salary
where occupation like '%manager%'
Group by occupation
Having avg_salary > 75000;

