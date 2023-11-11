-- DATA EXPLORATION

-- What is the name of the category with the highest category_id in the dvd_rentals.category table?

SELECT 
name, 
category_id 
FROM category 
ORDER BY category_id DESC LIMIT 1;

-- USE LIMIT to restrict the category_id to 1.

-- For the films with the longest length, what is the title of the “R” rated film with the 
-- lowest replacement_cost in dvd_rentals.film table? 

SELECT title,
length,
replacement_cost,
rating
FROM film WHERE rating = "R" ORDER BY length DESC, replacement_cost ASC;

-- Which actor_id has the most number of unique film_id records in the dvd_rentals.film_actor table?

SELECT actor_id, COUNT(DISTINCT film_id) AS Film_count FROM film_actor 
GROUP BY actor_id ORDER BY film_count DESC LIMIT 1;






