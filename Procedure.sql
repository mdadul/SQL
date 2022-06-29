DECLARE
    
    PROCEDURE PRINT(TEXT IN VARCHAR,V IN VARCHAR) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE(TEXT || ' '|| V);
    END;
    
BEGIN
    FOR I IN (
            SELECT FIRST_NAME,LAST_NAME,SALARY
            FROM HR.EMPLOYEES
    ) LOOP
        PRINT('FIRST NAME : ', I.FIRST_NAME);
        PRINT('LAST NAME  : ', I.LAST_NAME);
        PRINT('SALARY     : ', TO_CHAR(I.SALARY));
        PRINT('============','=============');
    END LOOP;
END;
