 --Joining two tables via 'empid' to find assignments to 1019
 SELECT firstname, 
        lastname, 
        departmentid
   FROM worker
   JOIN assign ON ( worker.empid = assign.empid )
  WHERE projno = '1019';
  