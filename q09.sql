--Creation of new view using select statement for employee and project names and ids
CREATE VIEW "MyNewView" AS
SELECT projno, projname, firstname, lastname, empid
  FROM worker JOIN assign USING (empid)
  JOIN project USING (projno);
