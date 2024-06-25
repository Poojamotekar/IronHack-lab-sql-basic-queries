-- 1--
USE sakila;
-- 2.Retrieve all the data from the tables actor, film and customer.--
select * from actor;
select * from film;
select * from customer;
select * from language;
-- 3 .Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
 select title from film;

-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT language.name 
from language
inner join film on film.language_id=language.language_id
where language.name=name;

-- 3.3 List of first names of all employees from the staff table
select first_name from staff;

-- 4.Retrieve unique release years.
select distinct(release_year) from film;

-- 5.Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
 select count(*) as store_id from store;
 
-- 5.2 Determine the number of employees that the company has.
select count(*) as staff_id from staff;

-- 5.3 Determine how many films are available for rent and how many have been rented.
select count(distinct i.film_id) from inventory i inner join film f on i.film_id=f.film_id;  #how many films available for the rent
select count(distinct i.film_id) from rental r inner join inventory i on r.inventory_id = i.inventory_id; #how many films have been rented
  
-- 5.4 Determine the number of distinct last names of the actors in the database.
Select count(distinct last_name) from actor;

-- 6.Retrieve the 10 longest films.
select film.title,film.length from film 
order by film.length 
limit 10;

-- Use filtering techniques in order to:
-- 7.1 Retrieve all actors with the first name "SCARLETT".
select * from actor where first_name="SCARLETT";