-- 1
SELECT c.first_name, c.last_name, c.email, ad.address
FROM customer c
JOIN address ad ON c.address_id = ad.address_id
WHERE city_id = 312;

-- 2
SELECT f.title, f.description, f.release_year, f.rating, f.special_features, ct.name AS genre
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category ct ON fc.category_id = ct.category_id
WHERE ct.name = 'COMEDY';

-- 3
SELECT ac.actor_id, ac.first_name, f.title, f.description, f.release_year
FROM actor ac
JOIN film_actor fa ON ac.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
WHERE ac.actor_id = 5;

-- 4
SELECT c.first_name, c.last_name, c.email, ad.address
FROM customer c
JOIN address ad ON c.address_id = ad.address_id
WHERE c.store_id = 1
AND city_id IN (1, 42, 312, 459);

-- 5
SELECT f.title, f.description, f.release_year, f.rating, f.special_features
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
WHERE f.rating = 'G'
AND f.special_features LIKE '%Behind the Scenes%'
AND fa.actor_id = 15;

-- 6
SELECT f.film_id, f.title, ac.actor_id, CONCAT(ac.first_name,' ', ac.last_name) AS actor_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor ac ON fa.actor_id = ac.actor_id
WHERE f.film_id = 369;

-- 7
SELECT f.title, f.description, f.release_year, f.rating, f.special_features, ct.name AS genre
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category ct ON fc.category_id = ct.category_id
WHERE ct.name = 'DRAMA'
AND f.rental_rate = 2.99;

-- 8
SELECT f.title, f.description, f.release_year, f.rating, f.special_features, ct.name AS genre, CONCAT(ac.first_name,' ', ac.last_name) AS actor_name
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category ct ON fc.category_id = ct.category_id
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor ac ON fa.actor_id = ac.actor_id
WHERE ct.name = 'ACTION' 
AND CONCAT(ac.first_name,' ', ac.last_name) = 'SANDRA KILMER';
