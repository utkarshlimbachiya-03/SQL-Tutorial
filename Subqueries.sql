# Subqueries

# Is a query within the another query
Select *
from parks_and_recreation.employee_demographics;

Select *
from parks_and_recreation.employee_salary;

Select *
from parks_and_recreation.employee_demographics
Where employee_demographics.employee_id In # In (Operator) Only should be 1 column
				( Select employee_id
                  From parks_and_recreation.employee_salary
                  Where dept_id=1);
                  
Select first_name, salary,
(Select avg(salary)
from parks_and_recreation.employee_salary) as avg_salary
from parks_and_recreation.employee_salary;