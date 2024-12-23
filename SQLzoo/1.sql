-- basics of select 

SELECT population FROM world WHERE name = 'Germany';

SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

SELECT name, area FROM world WHERE area BETWEEN 200000AND 250000;

-- QUERIES of SELECT

SELECT name, continent, population FROM world;

SELECT name FROM world WHERE population >= 200000000;

SELECT name, GDP/population FROM world WHERE population >= 200000000;

SELECT name, population/1000000 FROM world WHERE continent='South America';

SELECT name, population FROM world WHERE name in ('France','Germany', 'Italy')

SELECT name FROM world where name like 'United%'

SELECT name,population,area FROM world WHERE area > 3000000 OR population > 250000000

SELECT name, population, area FROM world WHERE population > 250000000 XOR area > 3000000

SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2) FROM world WHERE continent='South America';

SELECT name, ROUND(gdp/population,-3) FROM world WHERE gdp > 1000000000000;

SELECT name, LENGTH(name), continent, LENGTH(continent), capital, LENGTH(capital)
FROM world WHERE name LIKE 'G%';

SELECT name, capital FROM world WHERE LEFT(name,1)=LEFT(capital,1)AND name <> capital;

SELECT name FROM world WHERE name LIKE '%u%' AND name LIKE '%a%' AND name LIKE '%o%' AND name LIKE '%i%' AND name LIKE '%e%'AND name NOT LIKE '% %';