USE Marketing_Analytics;

DROP TABLE actor;
CREATE TABLE actor(
actor_id INT,
first_name VARCHAR(30),
last_name VARCHAR(30),
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/actor.csv'
INTO TABLE actor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM actor;

CREATE TABLE category(
category_id INT,
`name` VARCHAR(30),
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/category.csv'
INTO TABLE category
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM category;

CREATE TABLE film(
film_id INT,
title VARCHAR(30),
description VARCHAR(200),
release_year YEAR,
language_id INT,
original_language_id VARCHAR(30),
rental_duration INT,
rental_rate DECIMAL(10,4),
length INT,
replacement_cost DECIMAL(10,4),
rating VARCHAR(30),
last_update VARCHAR(30),
special_features VARCHAR(100),
`fulltext` VARCHAR(350));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/film.csv'
INTO TABLE film
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM film;

CREATE TABLE film_actor(
actor_id INT,
film_id INT,
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/film_actor.csv'
INTO TABLE film_actor
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


CREATE TABLE film_category(
film_id INT,
category_id INT,
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/film_category.csv'
INTO TABLE film_category
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM film_category;

CREATE TABLE inventory(
inventory_id INT,
film_id INT,
store_id INT,
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/inventory.csv'
INTO TABLE inventory
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

CREATE TABLE rental(
rental_id INT,
rental_date VARCHAR(30),
inventory_id INT,
customer_id INT,
return_date VARCHAR(30),
staff_id INT,
last_update VARCHAR(30));

LOAD DATA INFILE 'D:/SQL Work/Marketing_Analysis/rental.csv'
INTO TABLE rental
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM rental;



