# Case statements

# Apply logic directly inside the queries

Select first_name, last_name,
	CASE
		When salary > 70000 Then ' High'
		When salary between 40000 and 70000 then 'Medium'
		Else 'Low'
	End as salary_band
from parks_and_recreation.employee_salary;


Select first_name, last_name,
	CASE
		When salary > 70000 Then salary + (salary *0.07)
		When salary < 70000 Then salary + (salary *0.05)
	End as new_salary,
    CASE
		When dept_id=6 Then salary + (salary * 0.10)
	End as bonus
from parks_and_recreation.employee_salary;


