-- https://www.hackerrank.com/challenges/weather-observation-station-9/
-- mysql 

Select distinct city 
From Station 
Where left(City,1) Not in ('a','e','i','o','u'); 
