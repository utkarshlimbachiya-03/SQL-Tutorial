# Union 
# The union operator is used to combine the result set of two or more select statements 
# It can remove the duplicate rows the result set automatically.alter

Select age, gender
from parks_and_recreation.employee_demographics
Union
Select first_name, last_name
from parks_and_recreation.employee_salary;

# Works like a Distinct
Select first_name, last_name
from parks_and_recreation.employee_demographics
Union
Select first_name, last_name
from parks_and_recreation.employee_salary;

# Include the duplicates 
Select first_name, last_name
from parks_and_recreation.employee_demographics
Union all
Select first_name, last_name
from parks_and_recreation.employee_salary;

Select first_name, last_name, 'Old Man' as Label
from parks_and_recreation.employee_demographics
Where age > 40 and gender='Male'
Union 
Select first_name, last_name, 'Old Lady' as Label
from parks_and_recreation.employee_demographics
where age > 40 and gender='Female'
Union
Select first_name, last_name, 'Highly Paid Employee' as Label
from parks_and_recreation.employee_salary
Where salary > 70000
Order by first_name, last_name;

