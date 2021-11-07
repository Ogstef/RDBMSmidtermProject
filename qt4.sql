SELECT firstname, lastname 
FROM worker 
JOIN assign using (empid)
JOIN project using (projno)
WHERE projno = '1001'
ORDER BY worker.lastname ASC;
