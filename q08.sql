--Triple nested select statements are used with a join to connect Michael Burns 
--to the department he manages and display workers in that department
SELECT firstname, lastname, rating
  FROM worker JOIN assign ON (worker.empid = assign.empid)
 WHERE assign.projno IN(
       SELECT projno 
       FROM project 
       WHERE projmgrid IN(
                SELECT empid 
                FROM worker 
                WHERE lastname = 'Burns' 
                AND firstname = 'Michael'));
                