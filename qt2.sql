SELECT projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
FROM project
WHERE projname LIKE '%urn%';
