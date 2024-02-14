DROP TABLE IF EXISTS phones;

CREATE TABLE phones
(
    name         TEXT,
    manufacturer TEXT,
    price        INTEGER,
    units_sold   INTEGER
);

INSERT INTO phones (name, manufacturer, price, units_sold)
VALUES ('Galaxy S8', 'Samsung', 720, 5000),
       ('iPhone 7', 'Apple', 770, 10000),
       ('Xperia XZ', 'Sony', 550, 3000),
       ('U Ultra', 'HTC', 750, 1000),
       ('G6', 'LG', 650, 2000);

SELECT p.name, p.units_sold * p.price AS revenue
FROM phones p;

SELECT c.name || ', ' || c.country
FROM cities c;

SELECT concat(c.name, ', ', c.country) as location
FROM cities c;

SELECT concat(upper(c.name), ', ', lower(c.country)) as location
FROM cities c;