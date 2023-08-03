create schema cars;
use cars;
select * from car_dekho;

-- All the data imported now start the project as well

-- Q.1 Read the cars data
SELECT 
    *
FROM
    car_dekho;
-- Conclusion : Total 7927 rows data has 13 attributes like name of cars year selling price as well

-- Q.2 Total cars : To get the counts of total cars

SELECT 
    COUNT(*)
FROM
    car_dekho;
-- Conclusion : So dealer has total 7,927 cars entries

-- Q.3- The manger asked to employee how any cars will be available in 2023;
SELECT 
    COUNT(*) AS cars_available_for_2023
FROM
    car_dekho
WHERE
    year = 2023;
-- So total only 6 cars will avilable for 2023

-- Q.4 The manger asked to employee how any cars will be available in 2020,2021,2022;
SELECT 
    COUNT(*) AS cars_available
FROM
    car_dekho
WHERE
    year  in (2020,2021,2022);

-- Conclusion so totapl 88 cars are avilable for 2020,2021,2022.alter

-- Q. Client asked me to print total of all cars by year .i dont want to see all details

SELECT 
    year, COUNT(*) total_cars_for_all_years
FROM
    car_dekho
GROUP BY 1;
/*So we have the conclusion that business started year was 1994 at that timw we had only 2 cars and till now many variations are there
*/

-- Q. Client asked how many desel cars will be there for 2020

SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Diesel' AND year = 2020;
-- So in 2020 total 20 cars will be available

-- Q. Client requested for car dealer how any petrol cars will be there for 2020;

SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Petrol' AND year = 2020;
    
    -- Ans total 51 petrol cars
    
-- Q. Manager told me to give print of all fuel cars come by all year;
select * from car_dekho;
select year, name, fuel from car_dekho where fuel="Petrol";
select year, name, fuel from car_dekho where fuel="Diesel";
select year, name, fuel from car_dekho where fuel="Electric";
-- From above queries we will have all cars details for all years seprated by fuel.

-- Q. Manger said there are more than 100 car in a given yaer which year had more than 100 cars;
SELECT 
    year, COUNT(*) AS total_cars
FROM
    car_dekho
GROUP BY 1
HAVING total_cars > 100;

-- We have total 14 years in which we hasd more than 100 cars

-- Q. The manger said employee what is the number of total cars b/w 2015 and 2023;
SELECT 
    count(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;
    -- Conclusion : Sir from above query you will have total count of cars years b/w 2015 to 2023 total 4124 cars were we had b/w those years

-- Q. -- Q. The manger said employee all cars details b/w 2015 and 2023 we need complete list;
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;
    -- Sir from above query you will have total details fro b/w 2025 to 2023'











