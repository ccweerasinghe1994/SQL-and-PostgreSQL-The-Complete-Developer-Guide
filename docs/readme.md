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
