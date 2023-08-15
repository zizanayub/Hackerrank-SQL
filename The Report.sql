-- Link: https://www.hackerrank.com/challenges/the-report


WITH CTE_marks_table AS
(
SELECT 
   Name,
   CASE 
     WHEN Marks >= 0 AND Marks < 10 THEN 1
     WHEN Marks >= 10 AND Marks < 20 THEN 2
     WHEN Marks >= 20 AND Marks < 30 THEN 3
     WHEN Marks >= 30 AND Marks < 40 THEN 4
     WHEN Marks >= 40 AND Marks < 50 THEN 5
     WHEN Marks >= 50 AND Marks < 60 THEN 6
     WHEN Marks >= 60 AND Marks < 70 THEN 7
     WHEN Marks >= 70 AND Marks < 80 THEN 8
     WHEN Marks >= 80 AND Marks < 90 THEN 9
     ELSE 10 END AS Grade,
    Marks
FROM Students
ORDER BY Grade DESC, Name ASC
)

SELECT 
    CASE 
       WHEN Grade < 8 THEN Name = NULL
       WHEN Grade >= 8 AND Grade < 11 THEN Name
       END AS Name,
    Grade,
    Marks
FROM cte_marks_table
