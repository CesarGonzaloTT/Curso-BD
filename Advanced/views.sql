--VIEWS

--Representación virtual de una o más tablas, el cómo se representaría el resultado de una consulta en formato tabla.
--Se utilizan para ocultar consultas complejas, revisar datos de forma rápida

--El comando para crear una vista lleva el siguiente formato, debe llevar un nombre y la consulta o tabla que se va a generar.
CREATE VIEW v_adult_users AS
SELECT name, age
FROM users 
WHERE age >= 18;

--Para consultar una vista, se realiza como si se consultara una tabla completa.
SELECT * FROM v_adult_users;

--Para eliminar una vista.
DROP VIEW v_adult_users;

--Nota: Si se actualiza la tabla de donde se saca la información para la vista, automáticamente, esta también se actualiza, sin embargo, esto representa costos en ejecución.