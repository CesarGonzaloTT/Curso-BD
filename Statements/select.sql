SELECT * FROM users /*Todos los datos de toda la tabla*/
SELECT name FROM users /*Unicamente muestra los nombres*/
/*Nota: colocar ';' después de cada sentencia en Workbench*/
SELECT user_id, name FROM users /*Seleccionar mas de un dato*/
SELECT name FROM users WHERE age = 15 /*Selecciona únicamente los nombres de los usuarios que tienen 15 años de edad*/
SELECT DISTINCT age FROM users WHERE age = 15 /*Consulta contradictoria ya que indica que traiga a los usuarios de edades distintas pero que solo coincidan con 15 años*/
