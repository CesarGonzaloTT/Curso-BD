--INNER JOIN

--Comando que nos sirve para obtener los datos comunes de ambas tablas, el INNER JOIN funciona como una operación AND donde cada tabla es un conjunto.

--Primera impresión con un INNER JOIN, de esta manera, únicamente junta las tablas y las repite por cada valor.
SELECT * FROM users
INNER JOIN dni;

--Para evitar los problemas de la consulta de arriba, tenemos que especificar sobre que campo va a actuar el INNER JOIN (Filas coincidentes), en este caso se buscan los dni coincidentes y se hace con la relación 1:1.
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

--INNER JOIN = JOIN
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

--Ordenar los datos obtenidos por la edad descendentemente.
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC;

--Ordenar los datos obtenidos por la edad ascendentemente.
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age;

--Seleccionar únicamente el nombre y el dni.
SELECT name, dni_number FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age;

--INNER JOIN para obtener los usuarios y a las compañías a las que pertenecen, para establecer la relación 1:N.
SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

--Si invertimos los parámetros funciona de la misma manera.
SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

--Si se invierte la condición no afecta en nada.
SELECT * FROM companies
JOIN users
ON companies.company_id = users.company_id;

--Si tenemos columnas con el mismo nombre, lo que se debe de hacer es identificar a que tabla pertenece cada una.
SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

--INNER JOIN para obtener los usuarios y los lenguajes de programación, para establecer la relación N:M.
SELECT * FROM users_languages
JOIN users ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

--Extraer únicamente columnas relevantes.
SELECT users.name, languages.name FROM users_languages
JOIN users ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

--Se puede realizar también invirtiendo las tablas.
SELECT users.name, languages.name FROM users
JOIN users_languages ON users.user_id = users_languages.user_id
JOIN languages ON users_languages.language_id = languages.language_id;