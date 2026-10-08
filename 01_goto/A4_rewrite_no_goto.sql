SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = 4;

    IF v_salary < 50000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Low Salary');

    ELSIF v_salary <= 60000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary Review: Normal Salary');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary Review: High Salary');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/