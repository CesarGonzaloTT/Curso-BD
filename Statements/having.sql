--HAVING

--Having se utiliza cuando se tienen funciones agredas, en este caso no es muy explícito pero muestra cuando los grupos de edad sea mayores a 3, ya que solo hay 3 edades distintas. 
SELECT COUNT(age) FROM users HAVING COUNT(age) > 3;