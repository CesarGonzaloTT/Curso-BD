--ORDER BY

--Ordena los resultados con base en la edad. (Coloca primero los nulos y el ASC es por defecto)
SELECT * FROM users ORDER BY age ASC;

--Ordena los resultados con base en la edad descendentemente.
SELECT * FROM users ORDER BY age DESC;

--Ordena los resultados e incluye una condición.
SELECT * FROM users WHERE email = 'sara@gmail.com' ORDER BY age DESC;

--Ordena por el nombre.
SELECT name FROM users WHERE email = 'sara@gmail.com' ORDER BY name DESC;