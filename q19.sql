--Adding field for number of employees
ALTER TABLE PROJECT ADD(
numEmployeesAssigned NUMBER(7,0));

--Using DML to calculate number of employees assigned per project
SELECT
    "A1"."PROJNO"       "PROJNO",
    COUNT("A1"."EMPID") "COUNT(EMPID)"
FROM
    "HOME"."ASSIGN" "A1"
GROUP BY
    "A1"."PROJNO";

--Updating project table field "numEmployeesassigned" accordingly
UPDATE PROJECT
SET numEmployeesassigned = 4
WHERE PROJNO = 1001;

UPDATE PROJECT
SET numEmployeesassigned = 3
WHERE PROJNO = 1030;

UPDATE PROJECT
SET numEmployeesassigned = 2
WHERE PROJNO = 1019;

UPDATE PROJECT
SET numEmployeesassigned = 1
WHERE PROJNO = 1005;

UPDATE PROJECT
SET numEmployeesassigned = 1
WHERE PROJNO = 1025;

UPDATE PROJECT
SET numEmployeesassigned = 1
WHERE PROJNO BETWEEN 1031 AND 1033;