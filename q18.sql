--Use of 'Null' to find employees with no ratings on given projects
SELECT PROJNO, EMPID
  FROM ASSIGN
 WHERE RATING IS NULL; 
