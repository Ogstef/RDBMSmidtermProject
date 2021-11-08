 
  SELECT PROJNO,
         COUNT(EMPID) AS "NumofEmployees",
         SUM(HOURSASSIGNED) AS "TotalHoursAssigned"
    FROM ASSIGN
GROUP BY PROJNO;
