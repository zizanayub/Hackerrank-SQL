-- https://www.hackerrank.com/challenges/what-type-of-triangle/ 

SELECT
CASE
   WHEN A + B <= C OR A + C <= B OR B + C <= A Then "Not A Triangle" 
   WHEN A = B AND B = C Then "Equilateral"
   WHEN A = B OR A = C OR B = C Then "Isosceles"
   ELSE 'Scalene'
END AS TriangleType
FROM TRIANGLES; 
