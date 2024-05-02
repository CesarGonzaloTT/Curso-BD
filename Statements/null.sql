--NULL

--Obtiene los usuarios donde el correo es nulo.
SELECT * FROM users WHERE email IS NULL;

--Obtiene los usuarios donde el correo no es nulo.
SELECT * FROM users WHERE email IS NOT NULL;

--Obtiene los usuarios donde el correo no es nulo y el usuario tiene 15 años.
SELECT * FROM users WHERE email IS NOT NULL AND age = 15;