--Assigns 10 hours to employee 110 for project 1019
UPDATE assign 
   SET hoursassigned = 10 
 WHERE assign.empid = '110' AND assign.projno = '1019';
