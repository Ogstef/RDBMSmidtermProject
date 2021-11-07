SELECT firstname, lastname , departmentid
FROM worker
JOIN assign ON ( worker.empid = assign.empid )
WHERE projno ='1019';
