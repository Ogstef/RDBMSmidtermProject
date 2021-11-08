 --Use of nested select with group function to show details of highest budget
 SELECT * 
   FROM project 
  WHERE budget = (
      SELECT MAX(budget) 
        FROM project );