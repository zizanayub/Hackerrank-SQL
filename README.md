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






### ▶️ 07. Weather Observation Station 3




Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
The STATION table is described as follows:

![image](https://github.com/zizanayub/Hackerrank-SQL/assets/65456659/9138fdad-c3fa-4ca4-abe0-10e4ed095adf)




```SQL
SELECT DISTINCT CITY
FROM STATION
WHERE ID%2=0;
```




### ▶️ 08. Weather Observation Station 4




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


### ▶️ 09. Weather Observation Station 5




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








### ▶️ 10. Weather Observation Station 6




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





