2. select projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
from project
where projname like '%urn%';

3. select empid, firstname, lastname , (salary/12) as monthly_salary 
from worker;


4. select firstname, lastname 
from worker 
join assign using (empid)
join project using (projno)
where projno = '1001'
order by worker.lastname asc;



5. select firstname, lastname, salary, departmentid 
from worker 
where departmentid = '2' and salary = (select min(salary) from worker);


6. select * 
from project 
where budget = (select max(budget) from project );

7. select firstname, lastname , departmentid
from worker
join assign on ( worker.empid = assign.empid )
where projno ='1019';

8. select firstname, lastname , rating 
from worker
join project on ( worker.empid = project.projmgrid )
join assign on ( project.projno = project.projno )
join worker on ( assign.empid = worker.empid)
where firstname != 'Micheal' and lastname != 'Burns';

9. create view "myNewView" as 
select projno, projname, firstname, lastname, empid
from worker, project;

10.
select projno, projname 
from "myNewView"
where empid = '101';

11. 
insert into worker(empid, lastname, firstname, departmentid, birthdate, hiredate, salary ) values ( 201841 , 'Georgiou', 'Stefanos', 2 , '13-APR-1999', '15-APR-2021', 75000);
insert into assign ( projno , empid, hoursassigned, rating ) values ( '1001' , '201841', '15', '3');
insert into assign ( projno , empid, hoursassigned, rating ) values ( '1030' , '201841', '15', '3');
insert into worker(empid, lastname, firstname, departmentid, birthdate, hiredate, salary ) values ( 201869 , 'Macris', 'Constantine', 2 , '05-JUN-2000', '27-MAR-2021', 100000);
insert into assign ( projno , empid, hoursassigned, rating ) values ( '1001' , '201869', '20', '5');
insert into assign ( projno , empid, hoursassigned, rating ) values ( '1025' , '201869', '15', '3');
select * from "myNewView";
