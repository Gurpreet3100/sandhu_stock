CREATE OR REPLACE TRIGGER TRG_CUSTOMER
BEFORE INSERT OR UPDATE ON CUSTOMER
FOR EACH ROW
DECLARE
BEGIN
 IF(:NEW.CREDITS < 0) THEN
 raise_application_error(-20999, 'CREDITS has to be greater or equal to 0');
 END IF;
 
  
 IF(:NEW.BIRTHDAY > sysdate) THEN
 raise_application_error(-20998, 'BIRTHDAY MUST BE BELOW THE CURRENT DATE');
 END IF;
 
 
 IF(UPDATING and (:old.BIRTHDAY <> :new.BIRTHDAY)) THEN
 raise_application_error(-20997, 'BIRTHDAY CAN NOT BE CHANGED');
 END IF;
 
 IF(:NEW.EMAIL NOT LIKE '%_@_%._%') THEN
 raise_application_error(-20996, 'invalid email');
 END IF;
 
END TRG_CUSTOMER;