-- QUESTION 1
-- How many actors are there with the last name 'Wahlberg'?
SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

-- QUESTION 2
-- How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--QUESTION 3
-- What film does the store have the most of?
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY film_id ASC;

-- QUESTION 4
-- How many customers have the last name 'William'?
SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

-- QUESTION 5
-- What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id) AS employee_sales
FROM rental
GROUP BY staff_id
ORDER BY COUNT(staff_id)
--not sure how to return just the staff_id number

-- QUESTION 6
-- How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;


--QUESTION 7
-- What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) AS num_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_of_actors DESC


-- QUESTION 8
-- From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';


-- QUESTION 9
-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above
----250 for customers with ids between 380 and 430 (use group by and having > 250)
SELECT amount, COUNT(amount)
FROM payment
WHERE customer_id > 380 AND customer_id < 430
GROUP BY amount
HAVING COUNT(amount) > 250;


-- Question 10
-- Within the film table, how many rating categories are there?
-- And what rating has the most movies total?
SELECT rating, COUNT(rating)
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC






