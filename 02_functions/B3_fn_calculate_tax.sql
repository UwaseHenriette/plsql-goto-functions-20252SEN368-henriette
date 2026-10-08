
-- B3: Calculate tax based on employee salary.
CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_salary <= 50000 THEN
        v_tax := 0;

    ELSIF p_salary <= 100000 THEN
        v_tax := p_salary * 0.10;

    ELSE
        v_tax := p_salary * 0.20;
    END IF;

    RETURN v_tax;
END;
/