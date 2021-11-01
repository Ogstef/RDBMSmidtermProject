select projno , projname , projmgrid, budget, startdate, expecteddurationweeks 
from project
where projname like '%urn%';