SELECT firstname, lastname, salary, departmentid 
FROM worker 
WHERE departmentid = 2 AND salary = (SELECT MIN(salary) FROM worker WHERE departmentid = 2);
