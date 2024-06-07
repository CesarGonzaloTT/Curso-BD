--LEFT JOIN

--Comando que nos sirve para obtener los datos de una tabla (izquierda) completa, combinados con las relaciones de otra.

--Esta ejecución muestra la tabla usuarios y sus dni, le tengan registrado o no.
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Esta consulta ofrece lo mismo que la de arriba, únicamente se han seleccionado las columnas name y dni_number.
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

--Si se invierten las tablas, ahora se quedará con todos los campos de la tabla de dni y solo traerá las coincidencias con la tabla users.
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;

--Con este caso complejo, lo que se obtiene son todos los usuarios que serían la tabla izquierda y los lenguajes de programación que manejan.
SELECT users.name, languages.name FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;

--Si quitamos el LEFT JOIN de abajo, se vuelve a limitar la consulta.
SELECT users.name, languages.name FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;