--UPDATE

--Actualiza los datos de la base de datos, no se debe olvidar el where para evitar modificar toda la base de datos, en este caso se actualiza el campo de edad de un usuario. (Si se le pasara a la base de datos un string, es capaz de convertirla a entero si el campo así lo requiriera, como por ejemplo la edad)
UPDATE users SET age = 21 WHERE user_id = 11;

--Actualizar más de un campo, en este caso también se va a actualizar el campo de init_date.
UPDATE users SET age = 20, init_date = '2020-10-12' WHERE user_id = 11;