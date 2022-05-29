create or replace PROCEDURE PROC_NEW_CUSTOMER 
   					(CUSTOMER_ID 	OUT		INTEGER,
  					 EMAIL		 	IN		VARCHAR(45),
  					 FIRSTNAME	    IN		VARCHAR(40),
  					 LASTNAME  		IN		VARCHAR(40),
  					 GENDER 		IN		VARCHAR(20),
  					 BIRTHDAY		IN		DATE,
  					 CREDITS        IN OUT	DECIMAL(4)
  					 ) IS
 BEGIN
 	CUSTOMER_ID := SEQ_CUSTOMERID.NEXTVAL;
 	IF CREDITS is NULL THEN
 	CREDITS := 1000;
 	
  END IF;
  INSERT INTO CUSTOMER VALUE(CUSTOMER_ID, EMAIL, FIRSTNAME, LASTNAME, GENDER, BIRTHDAY, CREDITS);
  END PROC_NEW_CUSTOMER;