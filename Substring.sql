# String Functions

# It is used to manipulate, extract, combine or format text data stored in character columns (like names, emails, or addresses).

Select length('skyfall');

Select first_name, Length(first_name)
from parks_and_recreation.employee_demographics
order by length(first_name);


Select first_name, Upper(first_name)
from parks_and_recreation.employee_demographics
order by length(first_name);

Select first_name, 
Left(first_name,4),
Right(first_name,4)
from parks_and_recreation.employee_demographics;

# Substring
Select first_name, 
Substring(first_name,3,2)
from parks_and_recreation.employee_demographics;

Select first_name, birth_date,
Substring(birth_date,6,2) as birth_month
from parks_and_recreation.employee_demographics
where first_name='Tom';

# Replace
Select first_name, Replace(first_name,'a','u')
from parks_and_recreation.employee_demographics;

# Locate
Select Locate('t', 'Utkarsh'); # word I am looking for, name

Select first_name, Locate('a',first_name)
from parks_and_recreation.employee_demographics;

# Concat
Select first_name, last_name,
CONCAT(first_name,' ',last_name) as full_name
from parks_and_recreation.employee_demographics;