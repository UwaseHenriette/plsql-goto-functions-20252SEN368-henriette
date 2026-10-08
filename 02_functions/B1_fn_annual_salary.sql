-- B1: Calculate annual salary from monthly salary.
CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_salary * 12;
END;
/