-- Test functions inside a SQL SELECT statement.
SELECT
    e.emp_id,
    e.emp_name,
    e.salary AS monthly_salary,
    fn_annual_salary(e.salary) AS annual_salary,
    fn_years_of_service(e.hire_date) AS years_service,
    fn_calculate_tax(e.salary) AS tax,
    fn_dept_name(e.dept_id) AS department
FROM employees e;