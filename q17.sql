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
SELECT
    "A1"."PROJNO"                "PROJNO",
    "A1"."PROJNAME"              "PROJNAME",
    "A1"."PROJMGRID"             "PROJMGRID",
    "A1"."BUDGET"                "BUDGET",
    "A1"."STARTDATE"             "STARTDATE",
    "A1"."EXPECTEDDURATIONWEEKS" "EXPECTEDDURATIONWEEKS",
    "A1"."STATUS"                "STATUS",
    "A1"."NUMEMPLOYEESASSIGNED"  "NUMEMPLOYEESASSIGNED"
FROM
    "HOME"."PROJECT" "A1"
WHERE
    "A1"."STATUS" = 'ACTIVE';