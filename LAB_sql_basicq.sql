USE sakila;
SHOW TABLES;
#Display all available tables in the Sakila database.
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;
#Retrieve all the data from the tables actor, film and customer
SELECT title FROM film;
#Titles of all films from the film table
SELECT name AS language FROM language;
# List of languages used in films
SELECT first_name FROM staff;
#List of first names of all employees
SELECT DISTINCT release_year FROM film;
#Retrieve unique release years.
SELECT COUNT(*) AS store_count FROM store;
#Determine the number of stores
SELECT COUNT(*) AS employee_count FROM staff;
# Determine the Number of Employees
SELECT COUNT(*) AS available_films FROM film;
#Determine How Many Films Are Available
SELECT COUNT(DISTINCT inventory.film_id) AS rented_films
FROM Rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id;
#Rented Films
SELECT COUNT(DISTINCT last_name) AS distinct_last_names FROM actor;
#Number of Distinct Last Names of the Actors
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;
#Retrieve the 10 longest films.
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'SCARLETT';
#Actors with the first name "SCARLETT"
SELECT title, length
FROM film 
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;
#Retrieve all movies that have ARMAGEDDON in their title (>100min)
SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';
#number of films that include Behind the Scenes content
