--INDEX

--Sirven para agilizar la operación de lectura, pero representan un costo en escritura y en tamaño.

--Creación de un índice en el campo nombre de la tabla usuarios.
CREATE INDEX idx_name ON users(name);

--Para crear un índice único o con más campos se realiza de la siguiente forma.
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

--Prueba de uso de INDEX, el ejemplo consiste en una consulta sencilla, sin embargo, la creación del índice provoca que la tabla ya tenga referenciado su contenido.
SELECT * FROM users WHERE name = "Gonzalo";

--Para borrar un índice.
DROP INDEX idx_name ON users;