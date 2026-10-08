SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = 4;

    GOTO high_salary;

    IF v_salary > 60000 THEN
        <<high_salary>>
        DBMS_OUTPUT.PUT_LINE('High Salary');
    END IF;
END;
/


SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = 4;

    IF v_salary > 60000 THEN
        GOTO high_salary;
    ELSE
        GOTO normal_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: High Salary');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Normal Salary');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/