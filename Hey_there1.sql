select projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
from project
where projname like '%urn%';

select empid, firstname, lastname , (salary/12) as monthly_salary 
from worker;