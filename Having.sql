# Having filter groups
Select *
from parks_and_recreation.employee_demographics;

Select gender, AVG(age)
from parks_and_recreation.employee_demographics
group by gender
Having AVG(age) > 40;

Select *
from parks_and_recreation.employee_salary;

Select occupation, AVG(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
Group by occupation;

Select occupation, AVG(salary)
from parks_and_recreation.employee_salary
where occupation like '%manager%'
Group by occupation
Having avg(salary) > 75000;