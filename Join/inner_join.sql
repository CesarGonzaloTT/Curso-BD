--INNER JOIN

--Comando que nos sirve para obtener los datos comunes de ambas tablas

--Primera impresión con un INNER JOIN, de esta manera, únicamente junta las tablas y las repite por cada valor.
SELECT * FROM users
INNER JOIN dni;

--Para evitar los problemas de la consulta de arriba, tenemos que especificar sobre que campo va a actuar el INNER JOIN (Filas coincidentes), en este caso se buscan los dni coincidentes.
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