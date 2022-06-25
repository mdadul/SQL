-- ========Procedure with return =======
DECLARE
    VAL NUMBER;
    PROCEDURE SUMMATION(AA IN NUMBER, BB IN NUMBER, ANS OUT NUMBER) IS
    BEGIN
            ANS := AA + BB;
            DBMS_OUTPUT.PUT_LINE('TOTAL SUM IS :' || ANS);
    END;
BEGIN
    SUMMATION(10,20,VAL);
    DBMS_OUTPUT.PUT_LINE(VAL);

END;
-- ======================================

-- *************Procedure***************
DECLARE
    PROCEDURE SUMMATION(AA IN NUMBER, BB IN NUMBER) IS
    BEGIN
        DECLARE 
        ANS NUMBER;
        BEGIN
            ANS := AA + BB;
            DBMS_OUTPUT.PUT_LINE('TOTAL SUM IS :' || ANS);
        END;
    END;
BEGIN
    SUMMATION(10,20);
END;
-- ***************************************

-- \\\\\\\\\\\\\\\\\\\\CURSOR (GENERAL METHODE + LOOP METHODE)
DECLARE
    CURSOR EMP IS
    SELECT FIRST_NAME,LAST_NAME
    FROM EMPLOYEES;

    EMP_DET EMP%ROWTYPE;
BEGIN
    OPEN EMP;

    LOOP
        FETCH EMP INTO EMP_DET;
        EXIT WHEN EMP%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('FIRST NAME :  ' ||EMP_DET.FIRST_NAME || 'LAST NAME  : '|| EMP_DET.LAST_NAME);
    END LOOP;

    CLOSE EMP;

	-- LOOP METHODE

    FOR DET IN (
        SELECT SALARY
        FROM EMPLOYEES
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(DET.SALARY);
    END LOOP;
END;
-- /////////////////////////////////////////////////
-- [[[[[[[[[[[[[[[[FOR CURSOR]]]]]]]]]]]]]]]]]]]]]]]
BEGIN
  FOR details IN (
        SELECT 
            first_name , last_name 
        FROM 
            employees
    )
  LOOP
     dbms_output.put_line( 'First Name  : ' || details.first_name ||
        '    Last name: ' || 
        details.last_name );
  END LOOP;
END;
-- [[[[[[[[[[[[[[[[[[[[[[]]]]]]]]]]]]]]]]]]]]]]]]]]]]

-- ||||||||||||||||CASE|||||||||||||||||||||||||||||
DECLARE
  c_grade CHAR( 1 );
  c_rank  VARCHAR2( 20 );
BEGIN
  c_grade := 'B';
  CASE c_grade
  WHEN 'A' THEN
    c_rank := 'Excellent' ;
  WHEN 'B' THEN
    c_rank := 'Very Good' ;
  WHEN 'C' THEN
    c_rank := 'Good' ;
  WHEN 'D' THEN
    c_rank := 'Fair' ;
  WHEN 'F' THEN
    c_rank := 'Poor' ;
  ELSE
    c_rank := 'No such grade' ;
  END CASE;
  DBMS_OUTPUT.PUT_LINE( c_rank );
END;
-- |||||||||||||||||||||||||||||||||||||||||||||||||||


-- <<<<<<<<<<<<<<<<<IF ELSE IF>>>>>>>>>>>>>>>>>>>>>>>>
DECLARE
  n_sales NUMBER := 300000;
  n_commission NUMBER( 10, 2 ) := 0;
BEGIN
  IF n_sales > 200000 THEN
    n_commission := n_sales * 0.1;
  ELSIF n_sales <= 200000 AND n_sales > 100000 THEN 
    n_commission := n_sales * 0.05;
  ELSIF n_sales <= 100000 AND n_sales > 50000 THEN 
    n_commission := n_sales * 0.03;
  ELSE
    n_commission := n_sales * 0.02;
  END IF;

  DBMS_OUTPUT.PUT_LINE(n_commission);
END;
-- <<<<<<<<<<<<<<<<><<<<<<<<<<<<<<<<<<>>>>>>>>>>>>>>>>>

-- =================WHILE LOOP=====================
DECLARE 
    i number := 1; 
    j number := 1; 
BEGIN 
     WHILE i<=50 LOOP 
        dbms_output.put_line('i is '|| i); 
        i:= i+1; 
      END LOOP; 
END;
-- =================================================

-- ``````````````````FOR LOOP````````````````````
DECLARE 
    i number := 1; 
    j number := 1; 
BEGIN 
      <<outer_loop>> 
      FOR i IN 1..5 LOOP 
         <<inner_loop>> 
      FOR j IN 1..5 LOOP 
        dbms_output.put_line('i is '|| i || ' j is '||j); 
      END LOOP inner_loop; 
      END LOOP outer_loop; 
END;
-- `````````````````````````````````````````````````````
-- :::::::::::::::GENERAL LOOP::::::::::::::::::::::
DECLARE 
    i number := 1; 
BEGIN
   LOOP 
      dbms_output.put_line(i); 
      i:=i+1; 
      IF i>50 THEN 
         exit; 
      END IF; 
   END LOOP; 
END;
-- :::::::::::::::::::::::::::::::::::::::::::::::::

-- ?????????????????PRIME NUMBER?????????????????
DECLARE
	INPUT NUMBER:=:INP;
    FLAG NUMBER := 0;
    I NUMBER :=2;
    

BEGIN
   IF INPUT<2 THEN
    	FLAG := 1;
    END IF;
 
   FOR I IN 2..INPUT/2 LOOP
    	IF I MOD 2 = 0 THEN
        	FLAG := 1;
            EXIT;
        END IF;
    END LOOP;

    IF FLAG = 0 THEN
    	dbms_output.put_line(INPUT || ' IS A PRIME NUMBER ');
    ELSE 
        dbms_output.put_line(INPUT || ' IS NOT A PRIME NUMBER ');
    END IF;
END;
-- ?????????????????????????????????????????????????
