-- HOMEWORK (SELECT, FELL, WITH, GRACE, HOLDING OREOS)
-- 1.) How many ACTORS are there with the last name "Wahlberg"? Answer is '2'. 
SELECT *
FROM actor
WHERE last_name = 'Wahlberg';

-- 2.) How many payments were made BETWEEN $3.99 and $5.99? Answer is '5607'
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;

-- 3.) What films does the store have the most of? (search in inventory). Answer is 'Multiple films are tied at 8'
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- 4.) How MANY customers have the last name "William"? Answer is '0'
SELECT COUNT(customer_id)
FROM customer
WHERE last_name = 'William';

-- 5.) What store employee(get the id) sold the most rentals? Answer is '1-8040'
SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id
LIMIT 1;


-- 6.) How many different district names are there? Answer is '378' 
SELECT COUNT(DISTINCT(district))
FROM address;

-- 7.) What FILM has the most ACTORS in it? (use film_actor table and get film_id) Answer is 'film_id 508 - 15 actors'
SELECT film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC
LIMIT 1;



-- 8.) From store_id 1, how MANY customers have a last name ending with 'es'? (use customer table) Answer '13' THIS ONE WAS SO DAMAGING ONLY TO FIND OUT I NEEDED TO ADD 
-- ADD and last_name. I can't even begin to explain how much time. 
SELECT COUNT(customer_id)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';


-- 9.) How many payment AMOUNTS (4.99, 5.99, etc.) had a number of rentals above 250 for CUSTOMERS
--	with ids BETWEEN 380 and 430? (use group by and  > 250) Answer is '3'
SELECT COUNT (amount)
FROM payment
WHERE customer_id BETWEEN  380 and 430
GROUP BY amount
HAVING COUNT (amount) > 250

-- 10.) 10. Within the film table, how many rating categories are there? And what rating has the most movies total?

SELECT COUNT(rating), rating
FROM film 
GROUP BY rating
ORDER BY COUNT(rating) DESC;

