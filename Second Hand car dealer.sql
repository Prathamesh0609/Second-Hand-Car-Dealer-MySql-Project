create schema cars;
use cars;
-- Read Data --
select*from car_dekho;

-- Total Cars: To get a total records --
select count(*) from car_dekho;

-- How many cars were available in 2023? --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2023;

-- How many cars were availble in 2020,2021,2022? --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year;

-- To print the total of all cars bye year --
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year;

--  How many diesel cars were there in 2020? --
SELECT 
    COUNT(*) total_diesel_cars_in_2020
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'diesel'; 

-- How many petrol cars were there in 2020? --
SELECT 
    COUNT(*) AS total_petrol_cars_in_2020
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'petrol'; 

-- To print all the fuel cars by all year -- 
SELECT 
    year, fuel, COUNT(*) AS total_cars
FROM
    car_dekho
WHERE
    fuel IN ('Petrol' , 'Diesel', 'CNG')
GROUP BY year , fuel
ORDER BY year ASC;

-- Which year had more than 100 cars --
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) > 100
ORDER BY year DESC;

-- All cars count details between 2015 and 2023 --
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;

-- All cars details between 2015 and 2023 --
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;  
