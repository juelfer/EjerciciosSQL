-- 1. Utilizando la base de datos Sakila (BD de Pruebas de MySQL) Extraer todos los actores de la tabla actors.;

-- SELECT * FROM sakila.actor;

-- 2. De la tabla actors queremos conocer todos los nombres existentes en la tabla sin que se repita para ello utilizaremos DISTINCT.

-- SELECT DISTINCT first_name, last_name FROM actor;

-- 3. De la tabla film queremos obtener una relación de películas que cumplan las siguientes características:
-- rental_duration = 6
-- rental_rate >=2.99

-- SELECT film_id, title, rental_duration, rental_rate FROM film WHERE rental_duration = 6 AND rental_rate >=2.99;  

-- 4. De la tabla film queremos obtener una relación de la peliculas que tengan un replacement_cost entre 15.99 y 22.99

-- SELECT film_id, title, replacement_cost FROM film WHERE replacement_cost BETWEEN 15.99 AND 22.99;  

-- 5. Queremos Obtener todos los customers mediante el filtro de pertenencia a conjuntos IN que cumpla los siguientes requisitos.
-- Pertenecen al store 1
-- Y su first_name = MARY, o NANCY o DONNA. 

-- SELECT customer_id, first_name, last_name FROM customer WHERE customer_id IN (SELECT customer_id FROM customer WHERE store_id=1 AND (first_name = 'MARY' OR first_name='NANCY' OR first_name='DONNA'));

-- 6. Queremos saber que clientes alquilaron películas para ello debemos utilizar inner join entre las tablas CUSTOMER Y rental

-- SELECT * FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id GROUP BY customer.customer_id;

-- 7. Queremos saber cual es el cliente que más películas ha alquilado. 

-- SELECT first_name, last_name, COUNT(rental_date) FROM customer INNER JOIN rental ON customer.customer_id = rental.customer_id GROUP BY customer.customer_id;

-- 8. Queremos saber qué alquileres están atrasados en su devolución, para ello debemos buscar en la tabla del rental las peliculas
-- con una fecha de regreso = null, y que la fecha de alquiler supere el tiempo o cantidad de dias establecidos que puede conservar el cliente 
-- la pelicula. Si se cumple esta condición, entonces el cliente esta adeudando la película y se deberá mostrar en el listado el nombre de la
-- pelicula junto con el nombre del cliente, número de teléfono y email. También mostraremos si la película esta paǵada, en que fecha se pago y
-- cuanto se pagó.


