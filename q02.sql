--Displays all columns where project name contains the string 'urn'
 SELECT projno, 
        projname, 
        projmgrid, 
        budget, 
        startdate, 
        expecteddurationweeks 
   FROM project
  WHERE projname 
   LIKE '%urn%';