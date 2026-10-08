-- C1: Validate employee payroll information.
CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_emp_id NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
    v_dept_id employees.dept_id%TYPE;
    v_hire_date employees.hire_date%TYPE;
BEGIN
    SELECT salary, dept_id, hire_date
    INTO v_salary, v_dept_id, v_hire_date
    FROM employees
    WHERE emp_id = p_emp_id;

    IF v_salary IS NULL OR v_salary <= 0 THEN
        RETURN 'Invalid Payroll: Salary is invalid';

    ELSIF v_dept_id IS NULL THEN
        RETURN 'Invalid Payroll: Department is missing';

    ELSIF v_hire_date IS NULL THEN
        RETURN 'Invalid Payroll: Hire date is missing';

    ELSE
        RETURN 'Valid Payroll';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Invalid Payroll: Employee not found';
END;
/