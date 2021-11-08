--Creation of new view using select statement for employee and project names and ids
CREATE VIEW "myNewView" AS 
SELECT projno, projname, firstname, lastname, empid
  FROM WORKER,PROJECT;
