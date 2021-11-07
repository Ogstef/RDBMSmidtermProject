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
