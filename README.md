# Hackerrank-SQL



### ▶️ 01. Revising the Select Query I




Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

The CITY table is described as follows:



![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/29151ece-b04c-4131-8f3d-a74b6e2fa225)




Solution:

```SQL
SELECT *
FROM CITY
WHERE CountryCode = "USA" AND Population > 100000; 
```




Success!







### ▶️ 02. Revising the Select Query II




Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows:




![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/7982d7de-1232-45f5-8e18-9718be0d88e3)





Solution:



```SQL
SELECT NAME
FROM CITY
WHERE CountryCode = "USA" AND Population > 120000; 
```



Success!






### ▶️ 03. Select All





Query all columns (attributes) for every row in the CITY table.

The CITY table is described as follows:




![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/ebf0f203-a4fc-4f32-b259-10be65acf020)





Solution:


```SQL
SELECT *
FROM CITY; 
```



Success! 






### ▶️ 04. Select By ID






Query all columns for a city in CITY with the ID 1661.

The CITY table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/15bd313b-6878-4437-a50d-b98a95aeb6c7)




```SQL
SELECT *
FROM CITY 
WHERE ID = 1661;
```






### ▶️ 05. Japanese Cities' Attributes



Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

The CITY table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/f70e1696-c066-4920-9b69-45fad63f0041)



```SQL
SELECT *
FROM CITY
WHERE COUNTRYCODE = "JPN"; 
```


Success!





### ▶️ 06. Japanese Cities' Names




Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:





![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/8bdc9d08-9965-4d6c-a568-20f5eced4f29)





```SQL
SELECT Name
FROM CITY
WHERE CountryCode = "JPN";
```




Success!!





### ▶️ 07. Weather Observation Station 1




Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:




![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/8fcc19a4-3c42-4059-91ee-9676a86db8bd)





Solution:



```SQL
SELECT CITY,STATE
FROM STATION; 
```

Success!






### ▶️ 08. Weather Observation Station 3




Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/9138fdad-c3fa-4ca4-abe0-10e4ed095adf)




```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0;
```




### ▶️ 09. Weather Observation Station 4




Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/1c60b13e-dad8-4856-8955-8a58cf0bebc3)



where LAT_N is the northern latitude and LONG_W is the western longitude.

For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'. The query returns , because




Solution:

```SQL
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) "Difference"
FROM STATION; 
```



Success!


### ▶️ 10. Weather Observation Station 5




Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:




![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/86adcbf9-070d-4545-98c5-24217353e847)





![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/1367a019-99e1-49c0-a739-d8c991935fe5)







### 🔙 Faced Difficulties During Solving



```SQL
SELECT CITY,LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY) DESC,CITY
LIMIT 1;


SELECT CITY,LENGTH(CITY)
FROM STATION
ORDER BY LENGTH(CITY),CITY
LIMIT 1;
```


Success!!!








### ▶️ 11. Weather Observation Station 6




Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/fae3aa19-e126-4bbe-9e27-259a3f1119b5)





```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[aeiou]";
```


Success!!




### ▶️ 12. Weather Observation Station 7





Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/efac0ac5-bb40-45d3-b32d-967241c77c62)




```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "[aeiou]$";
```


Success!!






### ▶️ 13. Weather Observation Station 8




Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:




![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/eff185e6-292b-4000-a432-6fdd2eadd31b)





```
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[aeiou]"
      AND CITY REGEXP "[aeiou]$";
```




Success!!





### ▶️ 14. Weather Observation Station 9




Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:





![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/8728d5d1-544c-4c55-a10e-ec10ba1e3ec8)






```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "^[aeiou]";
```







### ▶️ 15. Weather Observation Station 10



Question:



Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/107d308e-3c6d-47bc-91b7-c50b7a206978)




Solution:

```SQL
SELECT DISTINCT CITY
FROM Station
WHERE CITY NOT REGEXP "[aeiou]$";
```



Success!!





### ▶️ 15. Weather Observation Station 11



Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/530a0d42-3d5c-44e4-95a9-606f584cd49b)




```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "^[aeiou]"
      OR CITY NOT REGEXP "[aeiou]$";
```



OR



```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u')
      OR RIGHT (CITY,1) NOT IN ('a','e','i','o','u');
```



Success!!





### ▶️ 16. Weather Observation Station 12



Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/3c1e3d74-fec1-409d-b7e0-d104b9f92e7d)




```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN ('a','e','i','o','u') 
      AND RIGHT(CITY,1) NOT IN ('a','e','i','o','u');
```



OR



```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT REGEXP "^[aeiou]"
     AND CITY NOT REGEXP "[aeiou]$"
```


Success!!!





### ▶️ 17. Higher Than 75 Marks


Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:



![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/bf060d4f-b0e4-4dfc-b955-cb52a2ba99e1)



![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/bb1175db-2c14-4ab5-bbf5-db47fbac7694)




```SQL
SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name,3), ID;
```



Success!!







### ▶️ 18. Employee Names


Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:


![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/c7cd9782-0e10-4440-8713-539711268b99)




```SQL
SELECT Name
FROM Employee
ORDER BY Name;
```



SUCCESS!!!\






### ▶️ 19. Employee Salaries



![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/29c95bd7-2aeb-4882-995a-f7f7ab9da538)



Solution:

```SQL
SELECT Name
FROM Employee
WHERE Salary > 2000 AND months < 10; 
```





### ▶️ 20. Type of Triangle



![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/0bc231dc-819c-42b5-9731-5b28d51476ec)




Solution:


```SQL
SELECT 
CASE 
    WHEN A+B <= C OR A+C <= B OR B+C <= A THEN "Not A Triangle"
    WHEN A=B AND B=C AND C=A THEN "Equilateral"
    WHEN A=B OR B=C OR C=A THEN "Isosceles"
    ELSE "Scalene"
END AS "Triangle Type"
FROM TRIANGLES; 
```



### ▶️ 💡 21. The PADS





![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/289e7cd1-28cf-4470-9bd0-856983c73327)

Link: https://www.hackerrank.com/challenges/the-pads/problem



Solution:


```SQL
SELECT CONCAT(Name,"(",LEFT(Occupation,1),")")
FROM OCCUPATIONS
ORDER BY Name,LEFT(Occupation,1);


SELECT CONCAT("There are a total of ", COUNT(Occupation)," ",LOWER(Occupation),"s.")
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation; 
```





### ▶️ 💡 22. New Companies


Problem: https://www.hackerrank.com/challenges/the-company/problem



```SQL
SELECT c.company_code, 
      c.founder, 
      COUNT(DISTINCT lm.lead_manager_code), 
      COUNT(DISTINCT sm.senior_manager_code), 
      COUNT(DISTINCT m.manager_code), 
      COUNT(DISTINCT e.employee_code)
FROM company c
JOIN lead_manager lm
ON lm.company_code = c.company_code
JOIN senior_manager sm
ON sm.lead_manager_code = lm.lead_manager_code
JOIN manager m
ON m.senior_manager_code = sm.senior_manager_code
JOIN employee e
ON e.manager_code = m.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
```






### ▶️ 💡 23. Revising Aggregations - The Count Function


Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function



```SQL
SELECT COUNT(ID) "Number of Cities"
FROM CITY
WHERE Population > 100000;
```




### ▶️ 💡 24. Revising Aggregations - The Sum Function


```SQL
SELECT SUM(Population)
FROM CITY
WHERE District = "California";
```




### ▶️ 💡 25. Revising Aggregations - Averages



Link: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem


```SQL
SELECT AVG(Population)
FROM CITY
WHERE District = "California";
```



Success!
