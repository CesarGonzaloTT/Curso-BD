--GROUP BY

--Agrupa cada edad por el máximo de cada una. (Esta sentencia no tiene mucho sentido)
SELECT MAX(age) FROM users GROUP BY age;

--Cuenta cuantos hay por cada edad. (Cada edad representa un grupo)
SELECT COUNT(age) FROM users GROUP BY age;

--Cuenta cuantos hay por cada grupo de edad y muestra la edad.
SELECT COUNT(age), age FROM users GROUP BY age;

--Cuenta cuantos hay por cada grupo de edad, muestra la edad y las ordena de forma ascendente.
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC;

--Cuenta cuantos hay por cada grupo de edad, muestra la edad y las ordena de forma ascendente pero limita a edades mayores a 15.
SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age ASC;