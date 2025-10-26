# Select statement
# Choose the columns to display it in the output
# From: Choose tables

# Select specific column
Select employee_id
from parks_and_recreation.employee_demographics;

# Select entire table
Select *
from parks_and_recreation.employee_demographics;

# PEMDAS
SELECT first_name, 
last_name, 
birth_date,
age,
(age+10) * 10
FROM parks_and_recreation.employee_demographics;

# Distinct
Select gender
from parks_and_recreation.employee_demographics;

Select distinct gender
from parks_and_recreation.employee_demographics;