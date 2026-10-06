DECLARE
    v_salary NUMBER := 5500;
BEGIN
    IF v_salary >= 6000 THEN
        GOTO high_salary;
    ELSIF v_salary >= 3000 THEN
        GOTO medium_salary;
    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: HIGH');
    GOTO exit_block;

    <<medium_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: MEDIUM');
    GOTO exit_block;

    <<low_salary>>
    DBMS_OUTPUT.PUT_LINE('Salary: $' || v_salary || ' - Category: LOW');
    GOTO exit_block;

    <<exit_block>>
    NULL;
END;
/
