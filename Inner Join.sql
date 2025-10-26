# Joins
# A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
# It should not necessary that column name should be exact same but the data inside the column should be the samilar.

Select *
from parks_and_recreation.employee_demographics;

Select *
from parks_and_recreation.employee_salary;

# Inner Join
# Will return the result that have same rows and column in both table

Select *
from parks_and_recreation.employee_demographics 
Inner Join parks_and_recreation.employee_salary
	On employee_demographics.employee_id=employee_salary.employee_id;

Select *
from parks_and_recreation.employee_demographics as demo
Inner Join parks_and_recreation.employee_salary as sal
	On demo.employee_id=sal.employee_id;


Select demo.employee_id, age, occupation
from parks_and_recreation.employee_demographics as demo
Inner Join parks_and_recreation.employee_salary as sal
	On demo.employee_id=sal.employee_id;