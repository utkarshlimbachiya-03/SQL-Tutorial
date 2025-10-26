# CTEs
# Can only be used immediately after creating it
With CTE_example as
(
Select gender, AVG(salary) as avg_salary, Max(salary) as max_sal, Min(salary) as min_sal, Count(salary) as count_sal
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
	on demo.employee_id = sal.employee_id
group by gender
)
Select AVG(avg_salary)
from CTE_example;

With CTE_example as
(
Select employee_id, gender, birth_date
from parks_and_recreation.employee_demographics as demo
Where birth_date > '1985-01-01'
),
CTE_example2 as
(
select employee_id, salary
from parks_and_recreation.employee_salary
where salary >50000
)
Select *
from CTE_example
JOIN CTE_example2 on CTE_example.employee_id=CTE_example2.employee_id;

