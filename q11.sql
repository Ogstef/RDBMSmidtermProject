--Authors of coursework are inserted into the research department
INSERT INTO worker(empid, lastname, firstname, 
            departmentid, birthdate, hiredate, salary) 
     VALUES (201841, 'Georgiou', 'Stefanos', 2, 
            '13-APR-1999', '15-APR-2021', 75000);
INSERT INTO assign (projno , empid, hoursassigned, rating) 
     VALUES ('1001', '201841', '15', '3');
INSERT INTO assign (projno , empid, hoursassigned, rating) 
     VALUES ('1030', '201841', '15', '3');
INSERT INTO worker(empid, lastname, firstname, 
            departmentid, birthdate, hiredate, salary)
     VALUES (201869, 'Macris', 'Constantine', 2 , 
            '03-AUG-2001', '27-MAR-2021', 100000);
INSERT INTO assign (projno , empid, hoursassigned, rating) 
     VALUES ('1001', '201869', '20', '5');
INSERT INTO assign (projno , empid, hoursassigned, rating) 
     VALUES ('1025', '201869', '15', '3');
     
     SELECT * 
       FROM "myNewView";
       