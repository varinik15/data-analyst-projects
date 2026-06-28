-- SQL Queries Practice
-- By Varini.k

-- 1. select all colums
select * from Employees;

-- 2. select specific colums
select emp_name, salary from Employees;

-- 3. Filter with WHERE
select * from employees
WHERE department = 'Sales';

-- 4. ORDER BY
select emp_name, salary from Employees
ORDER BY Salary DESC;

-- 5. Aggregate Functions
select COUNT(*) from Employees;
select SUM(salary) from Employees;
select AVG(salary) from Employees;
select MAX(salary) from Employees;
select MIN(salary) from Employees;

-- 6. GROUP BY
select department, COUNT(*) AS total_employees
from Employees
GROUP BY department;

-- 7. HAVING 
select department, AVG(salary) AS avg_salary
from Employees
GROUP BY department
HAVING AVG(salary) > 44000;

-- 8. JOINS 
select e.emp_name, d.dept_name
from Employees e
INNER JOIN Departments d
ON e.dept_id = d.dept_id;
