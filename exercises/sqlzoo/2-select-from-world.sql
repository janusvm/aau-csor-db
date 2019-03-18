/* 1 ---------------------------------------------------------------------------
 * Name, continent, and population
 */
SELECT name,
       continent,
       population
  FROM world;


/* 2 ---------------------------------------------------------------------------
 *  Names of countries with populations at least 200 million
 */
SELECT name
  FROM world
 WHERE population >= 200000000;


/* 3 ---------------------------------------------------------------------------
 * The name and the per capita GDP for those countries with a population of at
 * least 200 million
 */
SELECT name,
       gdp/population
  FROM world
 WHERE population >= 200000000;


/* 4 ---------------------------------------------------------------------------
 * Name and population in millions for the countries of South America
 */
SELECT name,
       population/1000000
  FROM world
 WHERE continent = 'South America';


/* 5 ---------------------------------------------------------------------------
 * Name and population for France, Germany, Italy
 */
SELECT name,
       population
  FROM world
 WHERE name IN ('France', 'Germany', 'Italy');


/* 6 ---------------------------------------------------------------------------
 * Countries which have a name that includes the word 'United'
 */
SELECT name
  FROM world
 WHERE name LIKE '%United%';


/* 7 ---------------------------------------------------------------------------
 * Countries that are big by area or big by population
 */
SELECT name,
       population,
       area
  FROM world
 WHERE population > 250000000 OR area > 3000000;


/* 8 ---------------------------------------------------------------------------
 * Countries that are big by area or big by population but not both
 */
SELECT name,
       population,
       area
  FROM world
 WHERE population > 250000000 XOR area > 3000000;


/* 9 ---------------------------------------------------------------------------
 * For South America show population in millions and GDP in billions both to 2
 * decimal places
 */
SELECT name,
       ROUND(population/1000000, 2)
       ROUND(gdp/1000000000, 2)
  FROM world
 WHERE continent LIKE 'South America';


/* 10 --------------------------------------------------------------------------
 * Per-capita GDP for the trillion dollar countries to the nearest $1000
 */
SELECT name,
       ROUND(gdp/population, -3)
  FROM world
 WHERE gdp >= 1000000000000;


/* 11 --------------------------------------------------------------------------
 * Name and capital where the name and the capital have the same number of
 * characters
 */
SELECT name,
       capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);


/* 12 --------------------------------------------------------------------------
 * Name and capital where the first letters of each match
 */
SELECT name,
       capital
  FROM world
 WHERE LEFT(name, 1) = LEFT(capital, 1) AND
       name <> capital;


/* 13 --------------------------------------------------------------------------
 * Find the country that has all the vowels and no spaces in its name
 */
SELECT name
  FROM world
 WHERE name NOT LIKE '% %' AND
       name LIKE '%a%' AND
       name LIKE '%e%' AND
       name LIKE '%i%' AND
       name LIKE '%o%' AND
       name LIKE '%u%';
