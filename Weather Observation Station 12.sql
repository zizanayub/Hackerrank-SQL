-- https://www.hackerrank.com/challenges/weather-observation-station-12/
-- mysql 

Select Distinct City 
From STATION 
Where LEFT(City,1) NOT IN ('a','e','i','o','u') AND 
RIGHT(CITY,1) NOT IN ('a','e','i','o','u'); 
