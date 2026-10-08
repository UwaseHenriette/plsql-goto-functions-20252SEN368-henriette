SET SERVEROUTPUT ON;

DECLARE
    v_salary employees.salary%TYPE;
BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE emp_id = 2;

    IF v_salary < 50000 THEN
        GOTO low_salary;
    ELSIF v_salary <= 60000 THEN
        GOTO normal_salary;
    ELSE
        GOTO high_salary;
    END IF;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Salary is low.');
    GOTO finish;

    <<normal_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Salary is within the normal range.');
    GOTO finish;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary Review: Salary is high.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_salary);
END;
/