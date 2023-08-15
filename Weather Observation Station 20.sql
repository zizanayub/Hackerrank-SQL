-- Question link: https://www.hackerrank.com/challenges/weather-observation-station-20


SELECT ROUND(s.lat_n,4)    -- 3
  FROM STATION s 
  WHERE (SELECT COUNT(lat_n)  -- 1,2
         FROM station  
         WHERE lat_n<s.lat_n)=
         (SELECT COUNT(lat_n)  -- 4,5
          FROM station  
          WHERE lat_n>s.lat_n)  
