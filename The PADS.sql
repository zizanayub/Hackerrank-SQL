-- https://www.hackerrank.com/challenges/the-pads/

Select concat(Name,'(',LEFT(Occupation,1),')')
From Occupations 
Order by Name; 

Select concat('There are a total of ', count(Occupation),' ', lower(Occupation),'s.')
From Occupations 
Group by occupation
Order by count(occupation), occupation;
