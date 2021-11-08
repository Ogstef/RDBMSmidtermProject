--Creating/modifying trigger to synchronize project table and assign table
CREATE OR REPLACE TRIGGER update_Employees_assigned
        AFTER INSERT OR DELETE OR UPDATE ON ASSIGN
    FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE PROJECT SET numEmployeesassigned = numEmployeesassigned + 1
            WHERE PROJNO = :NEW.PROJNO;
    END IF;
    IF DELETING THEN
        UPDATE PROJECT SET numEmployeesassigned = numEmployeesassigned - 1
            WHERE PROJNO = :OLD.PROJNO;
    END IF; 
    IF UPDATING THEN
        UPDATE PROJECT SET numEmployeesassigned = numEmployeesassigned + 1
            WHERE PROJNO = :NEW.PROJNO;
        UPDATE PROJECT SET numEmployeesassigned = numEmployeesassigned - 1
            WHERE PROJNO = :OLD.PROJNO;
    END IF;
END; 

--Testing to see if trigger works properly
INSERT INTO WORKER (
            EMPID, 
            LASTNAME,
            FIRSTNAME,
            DEPARTMENTID,
            BIRTHDATE,
            HIREDATE,
            SALARY)
     VALUES (99, 
            'Gaye', 
            'Marvin', 1, 
            '05-APR-90', 
            '20-SEP-95', 
            999999);

INSERT INTO ASSIGN (PROJNO, EMPID, HOURSASSIGNED)
     VALUES (1005, 99, 40); 
    
DELETE FROM ASSIGN
      WHERE EMPID = 99 AND PROJNO = 1005;
--IT WORKS HALELLUJAH
