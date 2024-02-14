-- should be only run once to create the database and table
DROP DATABASE IF EXISTS cities;
CREATE DATABASE cities;

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
    name VARCHAR(50),
    country VARCHAR(50),
    population INTEGER,
    area INTEGER
);