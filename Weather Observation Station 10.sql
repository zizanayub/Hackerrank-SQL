-- https://www.hackerrank.com/challenges/weather-observation-station-10/
-- mysql 


Select Distinct City 
From Station 
Where Right(City,1) not in ('a','e','i','o','u'); 
