INSERT INTO CUSTOMER VALUES(1, 'ABC@XYZ.COM', 'FRANZ', 'MÜLLER', 'm', TO_DATE('12-04-2012','dd-mm-yyyy'), 120);
INSERT INTO CUSTOMER VALUES(2, 'ABCXYZ.COM', 'FRANZ', 'MÜLLER', 'm', TO_DATE('26-05-2012','dd-mm-yyyy'), 140);
INSERT INTO CUSTOMER VALUES(3, 'ABC@XYZ.COM', 'FRANZ', 'MÜLLER', 'm', TO_DATE('30-05-2022','dd-mm-yyyy'), 120);


UPDATE CUSTOMER
SET BIRTHDAY = sysdate
WHERE CUSTOMER_ID = 5;