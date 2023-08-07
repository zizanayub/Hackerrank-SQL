/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* 
* * 
* * * 
* * * * 
* * * * *

Write a query to print the pattern P(20).
*/






WITH RECURSIVE stars AS
(
SELECT
    1 AS n,
    CAST('*' AS CHAR(100)) AS str
UNION ALL
SELECT
    n+1,
    CONCAT(str,' ','*')
    FROM stars
    WHERE n < 20

)

SELECT str FROM stars; 
