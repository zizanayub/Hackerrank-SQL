-- https://www.hackerrank.com/challenges/weather-observation-station-11/
-- mysql 


Select distinct City 
From Station 
Where Left(City,1) NOT IN ('a','e','i','o','u') OR 
      Right (City,1) NOT IN ('a','e','i','o','u');
