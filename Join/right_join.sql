--RIGHT JOIN

--Comando que nos sirve para obtener los datos de una tabla (derecha) completa, combinados con las relaciones de otra.

--Esta ejecución muestra la tabla usuarios y sus dni, pero al ser derecho, únicamente se mostrán los usuarios que tenga dni y los dni sin usuarios.
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--Esta consulta ofrece lo mismo que la de arriba, únicamente se han seleccionado las columnas name y dni_number.
SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

--Si se invierten las tablas, ahora se quedará con todos los campos de la tabla users y traerá los dni, los tengan o no.
SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

--Con este caso complejo, lo que se obtiene son todos los lenguajes de programación y los usuarios que los maneja, si hay alguno que ningún usuario maneje, llenará como nulo el valor del usuario.
SELECT users.name, languages.name FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id;

--Si quitamos el RIGHT JOIN de abajo, se vuelve a limitar la consulta.
SELECT users.name, languages.name FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;