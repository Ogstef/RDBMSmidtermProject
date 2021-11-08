--Displays details of employees and calculates monthly salary
 SELECT empid, 
        firstname, 
        lastname, 
        ROUND((salary/12), 2) 
     AS monthly_salary 
   FROM worker;
   