-- https://www.hackerrank.com/challenges/more-than-75-marks/
-- mysql 


Select name
From students 
Where marks > 75 
Order by right(name,3), id asc;
