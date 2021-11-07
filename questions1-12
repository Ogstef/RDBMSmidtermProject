2. SELECT projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
FROM project
WHERE projname LIKE '%urn%';

3. SELECT empid, firstname, lastname , (salary/12) AS monthly_salary 
FROM worker;


4. SELECT firstname, lastname 
FROM worker 
JOIN assign using (empid)
JOIN project using (projno)
WHERE projno = '1001'
ORDER BY worker.lastname ASC;



5.SELECT firstname, lastname, salary, departmentid 
FROM worker 
WHERE departmentid = 2 AND salary = (SELECT MIN(salary) FROM worker WHERE departmentid = 2);


6. SELECT * 
FROM project 
WHERE budget = (SELECT max(budget) FROM project );

7. SELECT firstname, lastname , departmentid
FROM worker
JOIN assign ON ( worker.empid = assign.empid )
WHERE projno ='1019';

8. SELECT firstname, lastname , rating 
FROM worker
JOIN project ON ( worker.empid = project.projmgrid )
JOIN assign ON ( project.projno = project.projno )
join worker ON ( assign.empid = worker.empid)
WHERE firstname != 'Micheal' AND lastname != 'Burns';

9. CREATE view "myNewView" AS 
SELECT projno, projname, firstname, lastname, empid
FROM worker, project;

10.
SELECT projno, projname 
FROM "myNewView"
WHERE empid = '101';

11. 
INSERT INTO worker(empid, lastname, firstname, departmentid, birthdate, hiredate, salary ) VALUES ( 201841 , 'Georgiou', 'Stefanos', 2 , '13-APR-1999', '15-APR-2021', 75000);
INSERT INTO assign ( projno , empid, hoursassigned, rating ) VALUES ( '1001' , '201841', '15', '3');
INSERT INTO assign ( projno , empid, hoursassigned, rating ) VALUES ( '1030' , '201841', '15', '3');
INSERT INTO worker(empid, lastname, firstname, departmentid, birthdate, hiredate, salary ) VALUES ( 201869 , 'Macris', 'Constantine', 2 , '05-JUN-2000', '27-MAR-2021', 100000);
INSERT INTO assign ( projno , empid, hoursassigned, rating ) VALUES ( '1001' , '201869', '20', '5');
INSERT INTO assign ( projno , empid, hoursassigned, rating ) VALUES ( '1025' , '201869', '15', '3');
SELECT * FROM "myNewView";

12. 
UPDATE assign 
SET hoursassigned =10 
WHERE assign.empid = '110' AND assign.projno = '1019';


