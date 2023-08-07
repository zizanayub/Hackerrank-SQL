/*
Question:
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):
* * * * * 
* * * * 
* * * 
* * 
*

Write a query to print the pattern P(20).
*/



-- First Solution
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




-- 2nd Solution


set @num = 21;
select repeat('* ',@num:=@num-1) from information_schema.tables limit 20;





-- 3rd Solution
DELIMITER //
CREATE PROCEDURE Asterisk(n INT)
BEGIN
    DECLARE i INT DEFAULT 20;
    WHILE i > 0 DO
        SELECT REPEAT('* ', i);
        SET i = i - 1;
    END WHILE;
END //
DELIMITER ;

CALL Asterisk(20)





-- 4th Solution
with recursive cte(Num) as
(select 20 
 union all
 select num-1 from cte where num>1)
 
 select repeat("* ",num) from cte;
