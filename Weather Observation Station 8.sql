-- https://www.hackerrank.com/challenges/weather-observation-station-8/ -- 
-- mysql -- 

Select City 
FROM Station 
Where
right (city,1) in ('a','e','i','o','u') AND 
                   left (city,1) in ('a','e','i','o','u');



-- Success -- 
