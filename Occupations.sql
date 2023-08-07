Question Link: https://www.hackerrank.com/challenges/occupations/problem


SELECT
   MAX(CASE WHEN Occupation = 'Doctor' THEN Name
        END) AS doctors,
   MAX(CASE WHEN Occupation = 'Professor' THEN Name
        END) AS professors, 
   MAX(CASE WHEN Occupation = 'Singer' THEN Name
        END) AS singers,
   MAX(CASE WHEN Occupation = 'Actor' THEN Name
        END) AS actors
FROM 
(
SELECT
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name ASC) AS rn,
    Occupation,
    Name
  FROM 
    Occupations
) AS occupations_pivoted
GROUP BY rn; 
