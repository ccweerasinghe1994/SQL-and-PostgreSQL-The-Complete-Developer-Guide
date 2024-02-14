-- get all the cities
SELECT * FROM cities c;
-- or we can get all the cities with their names, areas, countries, and populations
SELECT c.name, c.area, c.country, c.population
FROM cities c;

SELECT C.name, C.population / C.area AS population_density
FROM cities c;