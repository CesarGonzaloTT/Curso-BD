--UNION / FULL JOIN / RIGHT OUTER JOIN / LEFT OUTER JOIN / FULL OUTER JOIN

--El FULL JOIN (UNION) se queda con todos los datos, tengan o no relación; el FULL JOIN teoricamente no existe, lo que existe es la unión de los dos conjuntos de datos.

--Construcción del UNION, ya que este se basa en traer todo a la izquierda y todo a la derecha de tal manera que no se generen repeticiones innecesarias.
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id

--Con el asterisco en las consultas.
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id