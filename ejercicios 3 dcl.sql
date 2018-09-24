USE sakila;

-- Inserta una nueva película.

-- INSERT INTO film (`title`) VALUES ('El ataque de los tomates asesinos');

-- Inserta dos nuevos actores.

-- INSERT INTO actor VALUES (default, 'Andrés', 'Pajares', default);
-- INSERT INTO actor VALUES (default, 'Florinda', 'Chico', default);

-- Modifica el apellido de la actriz UMA a THURMAN

-- UPDATE actor SET last_name='THURMAN' WHERE first_name='UMA' AND last_name='WOOD';

-- Elimina los dos actores que has creado.

-- DELETE FROM actor WHERE first_name = 'Andrés' AND last_name = 'Pajares';
-- DELETE FROM actor WHERE first_name = 'Florinda' AND last_name = 'Chico';

-- Comprueba que ocurre si intentamos realizar la siguiente sentencia

-- delete from customer where customer_id=10;
