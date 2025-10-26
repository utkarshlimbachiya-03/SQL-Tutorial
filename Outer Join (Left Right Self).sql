# Outer Join
# 1 Left Join returns all records from the left table and the matched  records from the right table

Select *
from parks_and_recreation.employee_demographics as demo # Left tabel
Left Join parks_and_recreation.employee_salary as sal # Right table
	On demo.employee_id=sal.employee_id;
    
# 2 Right Join returns all records from the right table, and the matched records from the left table
Select *
from parks_and_recreation.employee_demographics as demo # Left tabel
Right Join parks_and_recreation.employee_salary as sal # Right table
	On demo.employee_id=sal.employee_id;

# 3 Self Join is a regular join, but the table is joined with itself
Select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from parks_and_recreation.employee_salary emp1
Join parks_and_recreation.employee_salary emp2
	On emp1.employee_id + 2=emp2.employee_id;
    

# Joining multiple tables together

Select *
from parks_and_recreation.employee_demographics as demo
Inner Join parks_and_recreation.employee_salary as sal
	On demo.employee_id=sal.employee_id
Inner Join parks_and_recreation.parks_departments as pd
	on sal.dept_id=pd.department_id; # Not has same column but has same data

Select *
from parks_and_recreation.parks_departments;