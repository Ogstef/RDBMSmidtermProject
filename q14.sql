--Use of group functions to display number of workers and total hours
  SELECT PROJNO,
         COUNT(EMPID) AS "NumofEmployees",
         SUM(HOURSASSIGNED) AS "TotalHoursAssigned"
    FROM ASSIGN
GROUP BY PROJNO;
