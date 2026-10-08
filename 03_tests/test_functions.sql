SET SERVEROUTPUT ON;

-- Test Annual Salary
SELECT emp_name,
       salary,
       fn_annual_salary(salary) AS annual_salary
FROM employees;

-- Test Years of Service
SELECT emp_name,
       hire_date,
       fn_years_of_service(hire_date) AS years_of_service
FROM employees;

-- Test Tax Calculator
SELECT emp_name,
       salary,
       fn_calculate_tax(salary) AS tax
FROM employees;

-- Test Department Name
SELECT emp_name,
       dept_id,
       fn_dept_name(dept_id) AS department
FROM employees;