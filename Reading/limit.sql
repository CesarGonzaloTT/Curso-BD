--LIMIT

--Limita la cantidad de resultados obtenidos, en este caso a 3.
SELECT * FROM users LIMIT 3;

--Query más compleja limitada en el número de resultados.
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15 LIMIT 2;