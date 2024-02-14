![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)

![alt text](image-6.png)
![alt text](image-7.png)
![alt text](image-8.png)

![alt text](image-9.png)
![alt text](image-10.png)
![alt text](image-11.png)
![alt text](image-12.png)

![alt text](image-13.png)

![alt text](image-14.png)

![alt text](image-15.png)

![alt text](image-16.png)

to create the database and table run the following sql commands in the terminal

```sql
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
```

![alt text](image-17.png)

![alt text](image-18.png)

![alt text](image-19.png)

![alt text](image-20.png)

```sql
-- let's add tokyo,Delhi,Shanghai,Sao Paulo
INSERT INTO cities (name, country, population, area) VALUES ('Tokyo', 'Japan', 37400068, 2188);
INSERT INTO cities (name, country, population, area) VALUES ('Delhi', 'India', 28514000, 573);
INSERT INTO cities (name, country, population, area) VALUES ('Shanghai', 'China', 25582000, 6340);
INSERT INTO cities (name, country, population, area) VALUES ('Sao Paulo', 'Brazil', 21650000, 1521);
```

| name | country | population | area |
| :--- | :--- | :--- | :--- |
| Tokyo | Japan | 37400068 | 2188 |
| Delhi | India | 28514000 | 573 |
| Shanghai | China | 25582000 | 6340 |
| Sao Paulo | Brazil | 21650000 | 1521 |

![alt text](image-22.png)

![alt text](image-23.png)

```sql
SELECT C.name, C.population / C.area AS population_density
FROM cities c;
```

![alt text](image-24.png)

| name | population\_density |
| :--- | :--- |
| Tokyo | 17093 |
| Delhi | 49762 |
| Shanghai | 4035 |
| Sao Paulo | 14234 |

![alt text](image-25.png)

```sql
-- EXERCISE 2

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

```

| name | revenue |
| :--- | :--- |
| Galaxy S8 | 3600000 |
| iPhone 7 | 7700000 |
| Xperia XZ | 1650000 |
| U Ultra | 750000 |
| G6 | 1300000 |

![alt text](image-26.png)

![alt text](image-27.png)

```sql
SELECT c.name || ', ' || c.country
FROM cities c;
```

| ?column? |
| :--- |
| Tokyo, Japan |
| Delhi, India |
| Shanghai, China |
| Sao Paulo, Brazil |

we can also use the concat function to achieve the same result

```sql
SELECT concat(c.name, ', ', c.country) as location
FROM cities c;
```

we can use lower and upper functions to convert the string to lower and upper case

```sql
SELECT concat(upper(c.name), ', ', lower(c.country)) as location
FROM cities c;
```

| location |
| :--- |
| TOKYO, japan |
| DELHI, india |
| SHANGHAI, china |
| SAO PAULO, brazil |
