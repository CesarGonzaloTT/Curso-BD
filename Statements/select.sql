--SELECT

--Comienzo de la query, en este caso se muestran todos los datos de la tabla. (Lo que se busca de la base de datos)
SELECT * FROM users;

--Muestra únicamente los nombres.
SELECT name FROM users;

--Se utiliza la ',' para seleccionar más de una columna y '*' para toda la tabla, en este caso se muestra el id y el nombre.
SELECT user_id, name FROM users;

--elecciona únicamente los nombres de los usuarios que tienen 15 años de edad.
SELECT name FROM users WHERE age = 15;

--Consulta contradictoria ya que indica que traiga a los usuarios de edades distintas pero que solo coincidan con 15 años.
SELECT DISTINCT age FROM users WHERE age = 15; 
