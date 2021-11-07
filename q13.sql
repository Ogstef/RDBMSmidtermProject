SELECT PROJNAME, PROJNO, [DISTINCT | ALL]
FROM PROJECT
WHERE STARTDATE;


--Joins the three relevant tables and displays requested projects and employees
SELECT PROJNO, EMPID, 
firstname || ' ' || lastname AS fullname
FROM ASSIGN 
JOIN PROJECT USING (PROJNO)
JOIN WORKER USING (EMPID)
WHERE STARTDATE > '01-SEP-21';