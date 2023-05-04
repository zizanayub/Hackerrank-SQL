-- https://www.hackerrank.com/challenges/weather-observation-station-7/ -- 
-- mysql -- 

Select Distinct City 
From Station 
Where City like '%a' OR 
      City like '%e' OR
      City like '%i' OR
      City like '%o' OR 
      City like '%u'; 


-- Success -- 
      
