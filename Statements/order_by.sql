SELECT * FROM users ORDER BY age ASC/*Ordena los resultados con base a la edad, coloca primero los nulos, el ASC es por defecto*/
SELECT * FROM users ORDER BY age DESC /*Los ordena descendente mente*/
SELECT * FROM users WHERE email = 'sara@gmail.com' ORDER BY age DESC /*Ordena los resultados y además tiene una condición*/
SELECT name FROM users WHERE email = 'sara@gmail.com' ORDER BY age DESC /*Ordena por el nombre*/