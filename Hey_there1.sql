select projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
from project
where projname like '%urn%';

select empid, firstname, lastname , (salary/12) as monthly_salary 
from worker;


select firstname, lastname 
from worker 
join assign using (empid)
join project using (projno)
where projno = '1001'
order by worker.lastname asc;
