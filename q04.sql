--Joins relevant tables and orders last names alphabetically
     SELECT firstname, 
            lastname 
       FROM worker 
       JOIN assign USING (empid)
       JOIN project USING (projno)
      WHERE projno = '1001'
   ORDER BY worker.lastname ASC;
   