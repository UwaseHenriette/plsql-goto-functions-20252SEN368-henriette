
-- A1: Classify an employee's salary using GOTO statements.
SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = 4;

    IF v_salary < 50000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 60000 THEN
        GOTO medium_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Classification: Low Salary');
    GOTO finish;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Classification: Medium Salary');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Classification: High Salary');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/