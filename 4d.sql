-- WITHOUT CREATING VIEW
-- Write a Pl/SQl program to show the list of users who whave reviewed same book as 'Salman'
DECLARE 
    CURSOR BB IS
   SELECT *
    FROM USERS
    WHERE USER_ID IN (SELECT USER_ID
               FROM BOOK_REVIEW 
               WHERE BOOK_ID IN(SELECT BOOK_ID
                                FROM BOOK_REVIEW
                                WHERE USER_ID = (SELECT USER_ID
                                                FROM USERS
                                                WHERE USERNAME = 'Salman')));

    US BB%ROWTYPE;
BEGIN
    OPEN BB;
    LOOP
        FETCH BB INTO US;
        EXIT WHEN BB%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('USER NAME : '|| US.USERNAME);
        DBMS_OUTPUT.PUT_LINE('USER ID : '|| US.USER_ID);
        DBMS_OUTPUT.PUT_LINE('USER PASSWORD : '|| US.PASSWORD);
        DBMS_OUTPUT.PUT_LINE('USER TYPE : '|| US.UTYPE);
    END LOOP;
    CLOSE BB;
END;
        
