--IFNULL

--Verifica si un valor es nulo y si es así, coloca el valor por defecto que se le ha asignado.
SELECT name, surname, IFNULL(age, 0) AS age FROM users;