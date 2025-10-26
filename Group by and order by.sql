# Group by use to group the rows that have same values in the specific columns once it group it is called aggregate function
Select *
from parks_and_recreation.employee_demographics;

Select gender, AVG(age)
from parks_and_recreation.employee_demographics
group by gender;

Select *
from parks_and_recreation.employee_salary;

Select occupation, salary
from parks_and_recreation.employee_salary
Group by occupation, salary;


Select occupation, AVG(salary)
from parks_and_recreation.employee_salary
Group by occupation;

Select gender, AVG(age), Max(age), Min(age), Count(age)
from parks_and_recreation.employee_demographics
group by gender;


# Order By sort the result in ethier ascending order or descending order
Select *
from parks_and_recreation.employee_demographics;

Select *
from parks_and_recreation.employee_demographics
Order by first_name ASC;

Select *
from parks_and_recreation.employee_demographics
Order by first_name DESC;

Select *
from parks_and_recreation.employee_demographics
Order by age ASC, gender;



