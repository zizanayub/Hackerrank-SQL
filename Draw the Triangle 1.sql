
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


SELECT str FROM stars
ORDER BY str DESC; 
