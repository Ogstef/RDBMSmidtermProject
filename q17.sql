--Adds status field to project table
ALTER TABLE PROJECT ADD (
STATUS VARCHAR(20));

--Arbitrary assignment of active, cancelled, and completed project statuses
UPDATE PROJECT
SET STATUS = 'ACTIVE'
WHERE MOD(PROJNO,2) = 1;

UPDATE PROJECT
SET STATUS = 'CANCELLED'
WHERE MOD(PROJNO,2) = 0;

UPDATE PROJECT
SET STATUS = 'COMPLETED'
WHERE PROJNO = 1032;

--Displays all active projects from projects table
SELECT  PROJNO,
        PROJNAME,
        PROJMGRID,
        BUDGET,
        STARTDATE,
        EXPECTEDDURATIONWEEKS,
        STATUS,
        NUMEMPLOYEESASSIGNED 
   FROM PROJECT
  WHERE STATUS = 'ACTIVE';