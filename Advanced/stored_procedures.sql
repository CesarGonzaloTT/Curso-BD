--STORED PROCEDURES.

--STORED PROCEDURE (Procedimiento almacenado) es una query que se guarda como en "favoritos".

--Comando para crear un procedimiento almacenado, este lleva un delimitador, nombre con paréntesis y BEGIN y END.
--Este comando es sin parámetros.
DELIMITER //
CREATE PROCEDURE P_all_users()
BEGIN
    SELECT * FROM users;
END//

--Para ejecutar el procedimiento almacenado.
CALL P_all_users;

--Con este comando se crea un procedimiento el cual puede recibir parámetros, en este caso la edad, sin embargo, el comando contiene un error, y 
--esto se debe a que está confundiendo la variable "age", la cual debe tener un nombre distinto.
DELIMITER //
CREATE PROCEDURE P_age_users(
    IN age int
)
BEGIN
    SELECT * FROM users WHERe age = age;
END//

--Para borrar un procedimiento.
DROP PROCEDURE P_age_users;

--Corrigiendo el comando anterior de creación de un procedimiento.
DELIMITER //
CREATE PROCEDURE P_age_users(
    IN age_param int
)
BEGIN
    SELECT * FROM users WHERe age = age_param;
END//

--Pare ejecutar un procedimiento con parámetros.
CALL P_age_users(23);