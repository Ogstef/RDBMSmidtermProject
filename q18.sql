SELECT
    "A1"."PROJNO" "PROJNO",
    "A1"."EMPID"  "EMPID"
FROM
    "HOME"."ASSIGN" "A1"
WHERE
    "A1"."RATING" IS NULL;