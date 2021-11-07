SELECT * 
FROM project 
WHERE budget = (SELECT max(budget) FROM project );
