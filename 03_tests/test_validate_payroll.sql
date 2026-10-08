SET SERVEROUTPUT ON;

SELECT
    emp_id,
    emp_name,
    salary,
    fn_validate_payroll(emp_id) AS payroll_status
FROM employees;