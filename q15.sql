--Error: all workers in database seem to be assigned to a project
--But we tried anyway by joining workers (managers are included) 
--and assignments with a left join (to create null values) and display those.
SELECT firstname||' '||lastname "Name",
PROJNO, EMPID
FROM WORKER
LEFT JOIN ASSIGN 
USING (EMPID)
WHERE PROJNO IS NULL;



