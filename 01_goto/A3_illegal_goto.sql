DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    GOTO inside_if; 
    IF v_flag THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('Inside IF block');
    END IF;
END;
/
*/
DECLARE
    v_flag BOOLEAN := TRUE;
BEGIN
    IF v_flag THEN
        GOTO target_label;
    END IF;

    <<target_label>>
    DBMS_OUTPUT.PUT_LINE('Valid jump target outside or properly nested block.');
END;
/
