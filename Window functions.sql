# Window Functions

Select gender, avg(salary) as avg_salary
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id
group by gender;

Select demo.first_name, demo.last_name, gender, avg(salary) Over(Partition by gender) as avg_salary # Window function
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id
;

Select demo.first_name, demo.last_name, gender, sum(salary) Over(Partition by gender) as sum_salary # Window function
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id;


Select demo.first_name, demo.last_name, gender, salary, sum(salary) Over(Partition by gender order by demo.employee_id) as rolling_total # Window function
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id;

Select demo.first_name, demo.last_name, gender, salary, Row_number() Over(Partition by gender order by salary DESC) as rownumber # Window function
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id;

Select demo.first_name, demo.last_name, gender, salary, Row_number() Over(Partition by gender order by salary DESC) as rownumber, # Window function
rank() over(partition by gender order by salary DESC) rank_num,
dense_rank() over(partition by gender order by salary DESC) dense_rank_num
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as sal
on demo.employee_id = sal.employee_id;
