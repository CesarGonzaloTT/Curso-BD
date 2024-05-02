--ALIAS -> AS

--Cambia el nombre de la columna obtenida por un alias, el resultado muestra la edad y la fecha de inicio delimitando los resultados entre 15 y 20. 
SELECT age, init_date AS 'Fecha de inicio en programación' FROM users WHERE age BETWEEN 15 AND 20;

--Concatena la cadena 'Nombre: ' con el nombre y el apellido y cambia el nombre de la cadena obtenida a 'Nombre completo'.
SELECT CONCAT('Nombre: ', name, ' ', surname) AS 'Nombre completo' FROM users;