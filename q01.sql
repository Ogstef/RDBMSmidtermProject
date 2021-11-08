--Concatenates first and last names, joins tables and desplays accounting employees
 SELECT FIRSTNAME||' '||LASTNAME "Name"
   FROM WORKER
   JOIN DEPT
  USING (DEPARTMENTID)
  WHERE DEPARTMENTNAME = 'Accounting';
  