# Where Clause Filter rows
Select *
From parks_and_recreation.employee_salary
where salary > 50000;

Select *
From parks_and_recreation.employee_salary
where salary >= 50000;


Select *
From parks_and_recreation.employee_salary
where first_name = 'Ron';

Select *
from parks_and_recreation.employee_demographics
Where gender <>'Female';



# Logical operators
Select *
from parks_and_recreation.employee_demographics
Where birth_date > '1985-01-01'
And gender = 'male';

Select *
from parks_and_recreation.employee_demographics
Where birth_date > '1985-01-01'
Or gender = 'male';

Select *
from parks_and_recreation.employee_demographics
Where birth_date > '1985-01-01'
Or not gender = 'male';

Select *
from parks_and_recreation.employee_demographics
where (first_name = 'Leslie' And age=44) Or age > 55;

# Like Statement
Select *
from parks_and_recreation.employee_demographics
where first_name = 'Jerry' ;

# Like statement is used to get specific statements withing the colum
# Two character
# 1. % Anything
 # 2. _ specific value
Select *
from parks_and_recreation.employee_demographics
where first_name Like 'Jer%'; # Like Jer and anything after


Select *
from parks_and_recreation.employee_demographics
where first_name Like '%er%';  # Anything before er and after er

Select *
from parks_and_recreation.employee_demographics
where first_name Like 'a%';  

Select *
from parks_and_recreation.employee_demographics
where first_name Like 'a__'; # After a there should only two charcters after it no more or less
  
Select *
from parks_and_recreation.employee_demographics
where first_name Like 'a___%';  #after a there should be three charters and after that anything
